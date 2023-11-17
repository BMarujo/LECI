from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives import serialization
from cryptography.hazmat.primitives.asymmetric import rsa
import sys
import time

def generate_rsa_key_pair(key_length, public_key_file, private_key_file):
    private_key = rsa.generate_private_key(
        public_exponent=65537,
        key_size=key_length,
        backend=default_backend()
    )

    public_key = private_key.public_key()

    with open(private_key_file, 'wb') as f:
        private_key_pem = private_key.private_bytes(
            encoding=serialization.Encoding.PEM,
            format=serialization.PrivateFormat.PKCS8,
            encryption_algorithm=serialization.NoEncryption()
        )
        f.write(private_key_pem)

    with open(public_key_file, 'wb') as f:
        public_key_pem = public_key.public_bytes(
            encoding=serialization.Encoding.PEM,
            format=serialization.PublicFormat.SubjectPublicKeyInfo
        )
        f.write(public_key_pem)

if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: python keygen.py <public_key_file> <private_key_file> <key_length>")
        sys.exit(1)

    public_key_file = sys.argv[1]
    private_key_file = sys.argv[2]
    key_length = int(sys.argv[3])

    start_time = time.time()
    generate_rsa_key_pair(key_length, public_key_file, private_key_file)
    end_time = time.time()

    elapsed_time = end_time - start_time
    print(f"RSA key pair generated in {elapsed_time:.5f} seconds.")
