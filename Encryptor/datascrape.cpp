#define WIN32_LEAN_AND_MEAN
#ifndef _WIN32_WINNT
#define _WIN32_WINNT 0x0600 // Vista or newer
#endif

#include <iostream>
#include <string>
#include <vector>
#include <set>
#include <windows.h>
#include <winhttp.h>
#include <iphlpapi.h>
#include <winsock2.h>
#include <iphlpapi.h>
#include <ws2tcpip.h>

#pragma comment(lib, "iphlpapi.lib")
#pragma comment(lib, "ws2_32.lib")
#pragma comment(lib, "winhttp.lib")

// #include "rsa.h"

typedef struct _MIB_TCP6ROW_OWNER_PID
{
    UCHAR ucLocalAddr[16];
    DWORD dwLocalScopeId;
    DWORD dwLocalPort;
    UCHAR ucRemoteAddr[16];
    DWORD dwRemoteScopeId;
    DWORD dwRemotePort;
    DWORD dwState;
    DWORD dwOwningPid;
} MIB_TCP6ROW_OWNER_PID, *PMIB_TCP6ROW_OWNER_PID;

typedef struct _MIB_TCP6TABLE_OWNER_PID
{
    DWORD dwNumEntries;
    MIB_TCP6ROW_OWNER_PID table[ANY_SIZE];
} MIB_TCP6TABLE_OWNER_PID, *PMIB_TCP6TABLE_OWNER_PID;

typedef struct _MIB_UDP6ROW_OWNER_PID
{
    UCHAR ucLocalAddr[16];
    DWORD dwLocalScopeId;
    DWORD dwLocalPort;
    DWORD dwOwningPid;
} MIB_UDP6ROW_OWNER_PID, *PMIB_UDP6ROW_OWNER_PID;

typedef struct _MIB_UDP6TABLE_OWNER_PID
{
    DWORD dwNumEntries;
    MIB_UDP6ROW_OWNER_PID table[ANY_SIZE];
} MIB_UDP6TABLE_OWNER_PID, *PMIB_UDP6TABLE_OWNER_PID;

// 1. List open ports locally
std::vector<std::string> getLocalOpenPorts()
{
    std::set<std::string> uniquePorts;
    std::string tcpPortsStr;

    // --- Helper lambdas ---
    auto addTcp = [&](DWORD af)
    {
        DWORD size = 0;
        GetExtendedTcpTable(nullptr, &size, FALSE, af, TCP_TABLE_OWNER_PID_ALL, 0);
        auto buf = (MIB_TCPTABLE_OWNER_PID *)malloc(size);
        if (GetExtendedTcpTable(buf, &size, FALSE, af, TCP_TABLE_OWNER_PID_ALL, 0) == NO_ERROR)
        {
            for (DWORD i = 0; i < buf->dwNumEntries; i++)
            {
                int port = ntohs((u_short)buf->table[i].dwLocalPort);
                if (port != 0 && port < 32768)
                {
                    uniquePorts.insert(std::string("TCP-") + std::to_string(port)).second;
                }
            }
        }
        free(buf);
    };

    auto addUdp = [&](DWORD af)
    {
        DWORD size = 0;
        GetExtendedUdpTable(nullptr, &size, FALSE, af, UDP_TABLE_OWNER_PID, 0);
        auto buf = (MIB_UDPTABLE_OWNER_PID *)malloc(size);
        if (GetExtendedUdpTable(buf, &size, FALSE, af, UDP_TABLE_OWNER_PID, 0) == NO_ERROR)
        {
            for (DWORD i = 0; i < buf->dwNumEntries; i++)
            {
                int port = ntohs((u_short)buf->table[i].dwLocalPort);
                if (port != 0 && port < 32768)
                {
                    uniquePorts.insert(std::string("UDP-") + std::to_string(port)).second;
                }
            }
        }
        free(buf);
    };

    // --- IPv4 ---
    addTcp(AF_INET);
    addUdp(AF_INET);

    // --- IPv6 ---
    addTcp(AF_INET6);
    addUdp(AF_INET6);

    // Move results into vector
    return std::vector<std::string>(uniquePorts.begin(), uniquePorts.end());
}

// 2. Get User-Agent / system info
std::string getSystemInfo()
{
    SYSTEM_INFO si;
    GetSystemInfo(&si);
    std::string info = "Processor architecture: " + std::to_string(si.wProcessorArchitecture) +
                       ", Number of processors: " + std::to_string(si.dwNumberOfProcessors);
    return info;
}

// 3. Local network info
std::string getLocalNetworkInfo()
{
    IP_ADAPTER_INFO adapters[16];
    DWORD bufLen = sizeof(adapters);

    std::string adapterInfo = "";

    if (GetAdaptersInfo(adapters, &bufLen) == ERROR_SUCCESS)
    {
        IP_ADAPTER_INFO *pAdapter = adapters;
        while (pAdapter && pAdapter->IpAddressList.IpAddress.String != "0.0.0.0")
        {
            adapterInfo.append("Adapter: ");
            adapterInfo.append(pAdapter->Description);
            adapterInfo.append("\nIP:");
            adapterInfo.append(pAdapter->IpAddressList.IpAddress.String);
            adapterInfo.append("\n\n");
            pAdapter = pAdapter->Next;
        }
    }

    return adapterInfo;
}

// 4. MAC Address
std::vector<std::string> getAllMacAddresses()
{
    ULONG bufferSize = 0;
    GetAdaptersInfo(nullptr, &bufferSize);

    std::vector<char> buffer(bufferSize);
    PIP_ADAPTER_INFO adapterInfo = reinterpret_cast<PIP_ADAPTER_INFO>(buffer.data());

    std::vector<std::string> macs;

    if (GetAdaptersInfo(adapterInfo, &bufferSize) == NO_ERROR)
    {
        PIP_ADAPTER_INFO current = adapterInfo;
        while (current)
        {
            if (current->AddressLength == 6)
            { // Standard MAC length
                char macAddr[18];
                sprintf_s(macAddr, "%02X-%02X-%02X-%02X-%02X-%02X",
                          current->Address[0],
                          current->Address[1],
                          current->Address[2],
                          current->Address[3],
                          current->Address[4],
                          current->Address[5]);
                macs.emplace_back(macAddr);
            }
            current = current->Next;
        }
    }
    return macs;
}

// 5. System timezone
std::string getSystemTimezone()
{
    std::time_t now = std::time(nullptr);
    std::tm *local_tm = std::localtime(&now);

    if (local_tm)
    {
        char tz_name[100];
        char tz_offset[100];

        // Get timezone abbreviation (EST, PST, etc.)
        if (std::strftime(tz_name, sizeof(tz_name), "%Z", local_tm) > 0)
        {
            // Get offset (+0500, -0800, etc.)
            if (std::strftime(tz_offset, sizeof(tz_offset), "%z", local_tm) > 0)
            {
                return std::string(tz_name) + " (" + std::string(tz_offset) + ")";
            }
            return std::string(tz_name);
        }
    }

    return "Unknown";
}

// 6. CPU & memory info
std::string getHardwareInfo()
{
    SYSTEM_INFO si;
    GetSystemInfo(&si);
    MEMORYSTATUSEX mem;
    mem.dwLength = sizeof(mem);
    GlobalMemoryStatusEx(&mem);

    std::string hardwareInfo = "";

    hardwareInfo.append("CPU cores: ");
    hardwareInfo.append(std::to_string(si.dwNumberOfProcessors));
    hardwareInfo.append("\n");
    hardwareInfo.append("Total RAM: ");
    hardwareInfo.append(std::to_string(mem.ullTotalPhys / (1024 * 1024)));
    hardwareInfo.append(" MB \n\n");

    return hardwareInfo;
}

void scrape()
{
    std::string userdata = "";

    auto ports = getLocalOpenPorts();
    userdata += "Common ports: ";
    for (auto p : ports)
        userdata += p + " ";
    userdata += "\n\n";

    userdata += "System info: " + getSystemInfo() + "\n\n";

    userdata += getLocalNetworkInfo();

    auto macs = getAllMacAddresses();
    for (const auto &mac : macs)
    {
        userdata += "MAC Address: " + mac + "\n\n";
    }

    userdata += "Timezone: " + getSystemTimezone() + "\n\n";

    userdata += getHardwareInfo();

    std::cout << userdata << std::endl;
}

int main()
{
    scrape();
    return 0;
}
