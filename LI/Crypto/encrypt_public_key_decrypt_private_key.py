from Crypto.PublicKey import RSA
from Crypto.Cipher import PKCS1_OAEP
f = open("keypair.pem", "r")
keypair = RSA.importKey(f.read(), "senha")
cipher = PKCS1_OAEP.new(keypair)
x = cipher.encrypt("The quick brown fox jumps over the lazy dog".encode("utf-8")) # Encryption with public key
y=cipher.decrypt(x).decode("utf-8")# Decryption with private key
print(y)