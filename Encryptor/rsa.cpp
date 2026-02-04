#include <botan/base64.h>
#include <botan/rsa.h>
#include <botan/auto_rng.h>
#include <botan/pubkey.h>
#include <botan/pkcs8.h>
#include <botan/cipher_mode.h>
#include <botan/hex.h>
#include <iostream>
#include <fstream>
#include <filesystem>

#include "rsa.h"

// ---------------- RSA Section ----------------

std::string rsaEncrypt(const std::vector<uint8_t>& msg, Botan::RSA_PublicKey& publicKey, Botan::AutoSeeded_RNG& rng)
{
    Botan::PK_Encryptor_EME encryptor(publicKey, rng, "OAEP(SHA-256)");
    auto ciphertext = encryptor.encrypt(msg, rng);
    return Botan::base64_encode(ciphertext);
}

std::vector<uint8_t> rsaDecrypt(const std::string& cipher_b64, Botan::RSA_PrivateKey& privateKey, Botan::AutoSeeded_RNG& rng)
{
    Botan::secure_vector<uint8_t> sec_ciphertext = Botan::base64_decode(cipher_b64);
    std::vector<uint8_t> ciphertext(sec_ciphertext.begin(), sec_ciphertext.end());

    Botan::PK_Decryptor_EME decryptor(privateKey, rng, "OAEP(SHA-256)");
    Botan::secure_vector<uint8_t> decrypted = decryptor.decrypt(ciphertext);
    return std::vector<uint8_t>(decrypted.begin(), decrypted.end());
}

Botan::RSA_PrivateKey generateKey(Botan::AutoSeeded_RNG& rng)
{
    return Botan::RSA_PrivateKey(rng, 2048);
}

void save_rsa_key(const Botan::RSA_PrivateKey& key, const std::string& filename)
{
    std::string pem = Botan::PKCS8::PEM_encode(key);

    std::ofstream out(filename, std::ios::binary);
    if(!out) throw std::runtime_error("Failed to open " + filename + " for writing");

    out << pem;
}

// Load RSA private key from unencrypted PEM
Botan::RSA_PrivateKey load_rsa_key(const std::string& filename, Botan::RandomNumberGenerator& rng)
{
    Botan::DataSource_Stream in(filename);
    std::unique_ptr<Botan::Private_Key> pk(Botan::PKCS8::load_key(in));

    Botan::RSA_PrivateKey* rsa = dynamic_cast<Botan::RSA_PrivateKey*>(pk.release());
    if(!rsa) throw std::runtime_error("Loaded key is not RSA");

    return *rsa;
}


Botan::RSA_PrivateKey loadOrGenerateKey(const std::string& filename, Botan::AutoSeeded_RNG& rng)
{
    if(std::filesystem::exists(filename))
    {
        return load_rsa_key(filename, rng);
    }
    else
    {
        Botan::RSA_PrivateKey key = generateKey(rng);
        save_rsa_key(key, filename);
        return key;
    }
}

// ---------------- AES Section ----------------

// Encrypt with AES-256/GCM and wrap the AES key with RSA
std::string hybridEncrypt(const std::string& plaintext, Botan::RSA_PublicKey& publicKey, Botan::AutoSeeded_RNG& rng)
{
    // 1. Generate AES key (256-bit) and nonce (96-bit)
    std::vector<uint8_t> aes_key(32);
    rng.randomize(aes_key.data(), aes_key.size());

    std::vector<uint8_t> nonce(12);
    rng.randomize(nonce.data(), nonce.size());

    // 2. Set up AES-GCM
    auto enc = Botan::Cipher_Mode::create("AES-256/GCM", Botan::Cipher_Dir::Encryption);
    enc->set_key(aes_key);
    enc->start(nonce);

    // 3. Encrypt the plaintext
    std::vector<uint8_t> buffer(plaintext.begin(), plaintext.end());
    enc->finish(buffer);

    // 4. Encrypt AES key with RSA
    std::string wrapped_key_b64 = rsaEncrypt(aes_key, publicKey, rng);

    // 5. Bundle: RSA_KEY || NONCE(hex) || CIPHERTEXT(base64)
    std::string result;
    result += wrapped_key_b64 + "\n";
    result += Botan::hex_encode(nonce) + "\n";
    result += Botan::base64_encode(buffer);

    return result;
}

// Decrypt hybrid scheme
std::string hybridDecrypt(const std::string& bundle, Botan::RSA_PrivateKey& privateKey, Botan::AutoSeeded_RNG& rng)
{
    // 1. Split into parts
    std::istringstream in(bundle);
    std::string wrapped_key_b64, nonce_hex, cipher_b64;
    std::getline(in, wrapped_key_b64);
    std::getline(in, nonce_hex);
    std::getline(in, cipher_b64, '\0');

    // 2. Unwrap AES key
    std::vector<uint8_t> aes_key = rsaDecrypt(wrapped_key_b64, privateKey, rng);

    // 3. Decode nonce and ciphertext
    std::vector<uint8_t> nonce = Botan::hex_decode(nonce_hex);
    Botan::secure_vector<uint8_t> cipher = Botan::base64_decode(cipher_b64);

    // 4. AES-GCM decrypt
    auto dec = Botan::Cipher_Mode::create("AES-256/GCM", Botan::Cipher_Dir::Decryption);
    dec->set_key(aes_key);
    dec->start(nonce);

    dec->finish(cipher);

    return std::string(cipher.begin(), cipher.end());
}
