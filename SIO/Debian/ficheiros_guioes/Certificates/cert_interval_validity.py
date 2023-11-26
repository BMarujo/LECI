from cryptography import x509
from cryptography.hazmat.backends import default_backend
from datetime import datetime
import sys

def load_certificate(file_path):
    with open(file_path, 'rb') as file:
        certificate_data = file.read()
        certificate = x509.load_pem_x509_certificate(certificate_data, default_backend())
    return certificate

def is_certificate_valid(certificate):
    current_time = datetime.utcnow()
    not_valid_before = certificate.not_valid_before
    not_valid_after = certificate.not_valid_after

    return not_valid_before <= current_time <= not_valid_after

def main():
    # Load certificates and check validity
    certificates = {
        load_certificate(sys.argv[1]).subject: load_certificate(sys.argv[1]) 
        # Add more certificates as needed
    }

    # Verify validity and print results
    for subject, certificate in certificates.items():
        if is_certificate_valid(certificate):
            print(f"Certificate for {subject} is valid.")
        else:
            print(f"Certificate for {subject} is NOT valid.")

if __name__ == "__main__":
    main()
