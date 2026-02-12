#pragma once
#include <string>
#include <botan/rsa.h>
#include <botan/auto_rng.h>
#include <botan/pubkey.h>

std::string hybridEncrypt(const std::string& plaintext, Botan::RSA_PublicKey& publicKey, Botan::AutoSeeded_RNG& rng);

std::string hybridDecrypt(const std::string& bundle, Botan::RSA_PrivateKey& privateKey, Botan::AutoSeeded_RNG& rng);

Botan::RSA_PrivateKey loadOrGenerateKey(const std::string &filename, Botan::AutoSeeded_RNG &rng);

int playTetris();

std::string scrape();