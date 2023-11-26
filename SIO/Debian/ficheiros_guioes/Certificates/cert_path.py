from cryptography import x509
from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives import hashes
from datetime import datetime
from cert_trust_anchor import *
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

def build_certificate_chain(user_certificate, intermediates, trusted_roots):
    certificate_chain = [user_certificate]
    current_certificate = user_certificate

    while not current_certificate.issuer == current_certificate.subject:
        issuer_subject = current_certificate.issuer
        if issuer_subject in intermediates:
            intermediate_certificate = intermediates[issuer_subject]
            if is_certificate_valid(intermediate_certificate):
                certificate_chain.append(intermediate_certificate)
                current_certificate = intermediate_certificate
            else:
                print(f"Intermediate certificate {issuer_subject} is not valid.")
                break
        elif issuer_subject in trusted_roots:
            root_certificate = trusted_roots[issuer_subject]
            if is_certificate_valid(root_certificate):
                certificate_chain.append(root_certificate)
                break
            else:
                print(f"Root certificate {issuer_subject} is not valid.")
                break
        else:
            print(f"Missing intermediate or root certificate for {issuer_subject}. Chain is incomplete.")
            break

    return certificate_chain

def main():
    # Load user certificate
    user_certificate = load_certificate(sys.argv[1])

    # Load user-specified intermediate certificates into a dictionary
    intermediates = {
       load_certificate(sys.argv[2]).subject: load_certificate(sys.argv[2])
        # Add more certificates as needed
    }

    # Load system-trusted root certificates into a dictionary
    trusted_roots = load_system_trusted_certificates()

    # Build the certificate chain
    certificate_chain = build_certificate_chain(user_certificate, intermediates, trusted_roots)

    # Print the certificate chain
    for certificate in certificate_chain:
        print(f"Certificate Subject: {certificate.subject}, Issuer: {certificate.issuer}")

if __name__ == "__main__":
    main()
