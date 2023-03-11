from Crypto.Cipher import AES
key = "1234567890abcdef" # Must provide a valid key (with 16, 24 or 32 bytes)
cipher = AES.new(key)
print(cipher.block_size) # Prints the number of bytes in each block
print(cipher.mode) # Prints the cipher mode (1 for ECB)
x = cipher.encrypt("texto para cifra")
print(cipher.decrypt(x))