from cryptography import x509
from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives import serialization
from cryptography.hazmat.primitives.asymmetric import padding
from cryptography.hazmat.primitives import hashes
import requests
import sys
from datetime import datetime
from cert_path import *

def load_crl(crl_file_path):
    with open(crl_file_path, 'rb') as file:
        crl_data = file.read()
        crl = x509.load_pem_x509_crl(crl_data, default_backend())
    return crl

def check_revocation_status(certificate, crl):
    revoked_certificates = crl.revoked
    for revoked_certificate in revoked_certificates:
        if certificate.serial_number == revoked_certificate.serial_number:
            return False  # Certificate is revoked
    return True  # Certificate is not revoked

def validate_signature(certificate, issuer_public_key):
    # Verify the signature of the certificate using the issuer's public key
    try:
        issuer_public_key.verify(
            certificate.signature,
            certificate.tbs_certificate_bytes,
            padding.PKCS1v15(),
            certificate.signature_hash_algorithm,
        )
        return True  # Signature is valid
    except Exception as e:
        print(f"Signature validation failed: {str(e)}")
        return False  # Signature is invalid

def validate_certificate(certificate, issuer_certificate):
    # Check the purpose, common name, and validity interval
    if not certificate.is_signature_valid(issuer_certificate.public_key):
        print("Signature is invalid.")
        return False

    if not certificate.is_valid_ca:
        print("Certificate is not a valid CA.")
        return False

    # Add more checks as needed (e.g., common name, purpose)

    return True

def validate_certificate_chain(certificates):
    # Assuming certificates is a list where the first certificate is the end-entity certificate
    # and each subsequent certificate is the issuer of the previous one.
    for i in range(len(certificates) - 1):
        certificate = certificates[i]
        issuer_certificate = certificates[i + 1]

        if not validate_certificate(certificate, issuer_certificate):
            print(f"Certificate {i + 1} in the chain is not valid.")
            return False

        # Fetch and load CRL for revocation check
        crl_file_path = certificate.extensions.get_extension_for_class(x509.CRLDistributionPoints).value[0].full_name[0].value
        crl = load_crl(crl_file_path)

        if not check_revocation_status(certificate, crl):
            print(f"Certificate {i + 1} is revoked.")
            return False

    print("Certificate chain validation successful.")
    return True

def main():
    # Load certificates into a list, assuming the first certificate is the end-entity certificate
    # and each subsequent certificate is the issuer of the previous one.
    certificates = [load_certificate(sys.argv[i]) for i in range(1, len(sys.argv))]

    # Validate the certificate chain
    validate_certificate_chain(certificates)

if __name__ == "__main__":
    main()
