import hashlib
import sys

for filename in sys.argv[1:]:
    with open(filename, 'r') as f:
        sha1_hash = hashlib.sha256()
        while True:
            data = f.read()
            if not data:
                break
            sha1_hash.update(data.encode("utf-8"))
        print(sha1_hash.hexdigest())
