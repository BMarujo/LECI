from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives import serialization, hashes
from cryptography.hazmat.primitives.asymmetric import rsa, padding
import sys

def rsa_encrypt(original_file, public_key_file, encrypted_file):
    with open(original_file, 'rb') as f:
        data = f.read()

    with open(public_key_file, 'rb') as f:
        public_key = serialization.load_pem_public_key(
            f.read(),
            backend=default_backend()
        )

    block_size = (public_key.key_size // 8) - 11
    encrypted_data = b""

    for i in range(0, len(data), block_size):
        block = data[i:i+block_size]
        encrypted_block = public_key.encrypt(
            block,
            padding.PKCS1v15()
        )
        encrypted_data += encrypted_block

    with open(encrypted_file, 'wb') as f:
        f.write(encrypted_data)

if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: python rsa_encrypt.py <original_file> <public_key_file> <encrypted_file>")
        sys.exit(1)

    original_file = sys.argv[1]
    public_key_file = sys.argv[2]
    encrypted_file = sys.argv[3]

    rsa_encrypt(original_file, public_key_file, encrypted_file)
    print(f"File encrypted successfully and saved to {encrypted_file}.")
