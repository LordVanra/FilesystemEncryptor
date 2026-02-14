#define NOMINMAX

#include <windows.h>
#include <iostream>
#include <string>
#include <conio.h>
#include "rsa.h"

std::wstring getPasswordSecurely() {
    std::wstring password;
    wchar_t ch;
    
    std::wcout << L"Enter password or PIN: " << std::flush;
    
    while (true) {
        ch = _getwch();
        
        if (ch == L'\r' || ch == L'\n') {
            std::wcout << std::endl;
            break;
        }
        else if (ch == L'\b') {
            if (!password.empty()) {
                password.pop_back();
                std::wcout << L"\b \b" << std::flush;
            }
        }
        else {
            password += ch;
            std::wcout << L'*' << std::flush;
        }
    }
    
    return password;
}

bool verifyWindowsCredentials(const std::wstring& username, const std::wstring& password) {

    std::wcout << "Username: " << username << std::endl;
    std::wcout << "Password: " << password << std::endl;
    
    HANDLE hToken = NULL;
    
    // Array of different logon types to try
    DWORD logonTypes[] = {
        LOGON32_LOGON_INTERACTIVE,  // Interactive logon (PIN works here)
        LOGON32_LOGON_NETWORK,      // Network logon
        LOGON32_LOGON_BATCH,        // Batch logon
        LOGON32_LOGON_SERVICE       // Service logon
    };
    
    // Array of domain options
    const wchar_t* domains[] = {
        NULL,       // No domain (local)
        L".",       // Dot notation for local
        L"MicrosoftAccount"  // For Microsoft accounts
    };
    
    // Try all combinations
    for (DWORD logonType : logonTypes) {
        for (const wchar_t* domain : domains) {
            BOOL success = LogonUserW(
                username.c_str(),
                domain,
                password.c_str(),
                logonType,
                LOGON32_PROVIDER_DEFAULT,
                &hToken
            );
            
            if (success) {
                std::wcout << L"Success with logon type: " << logonType 
                          << L" and domain: " << (domain ? domain : L"NULL") << std::endl;
                CloseHandle(hToken);
                return true;
            }
        }
    }
    
    // If all fail, show the last error
    DWORD error = GetLastError();
    std::wcout << L"All authentication methods failed. Last error: " << error << std::endl;
    
    return false;
}

std::wstring getCurrentUsername() {
    wchar_t username[256];
    DWORD size = 256;
    
    if (GetUserNameW(username, &size)) {
        return std::wstring(username);
    }
    
    return L"";
}

int checkPassword(const std::string& password) {
    std::wstring wpassword(password.begin(), password.end());
    
    if (verifyWindowsCredentials(getCurrentUsername(), wpassword)) {
        return 1;
    } else {
        return 0;
    }
}