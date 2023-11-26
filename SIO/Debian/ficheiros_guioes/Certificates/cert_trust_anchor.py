import os
from cryptography import x509
from cryptography.hazmat.backends import default_backend
from datetime import datetime

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

def load_system_trusted_certificates(directory="/etc/ssl/certs"):
    trusted_certificates = {}

    for entry in os.scandir(directory):
        if entry.is_file() and entry.name.endswith('.pem'):
            certificate = load_certificate(entry.path)
            if is_certificate_valid(certificate):
                subject = certificate.subject
                trusted_certificates[subject] = certificate

    return trusted_certificates

def main():
    system_trusted_certificates = load_system_trusted_certificates()

    # Print the subjects of the loaded system-trusted certificates
    for subject in system_trusted_certificates.keys():
        print(f"System-trusted certificate for {subject} is valid.")

if __name__ == "__main__":
    main()
