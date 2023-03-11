from Crypto.Hash import SHA256
import sys

for filename in sys.argv[1:]:
    with open(filename, 'r') as f:
        sha1_hash = SHA256.new()
        while True:
            data = f.read()
            if not data:
                break
            sha1_hash.update(data.encode("utf-8"))
        print(sha1_hash.hexdigest())