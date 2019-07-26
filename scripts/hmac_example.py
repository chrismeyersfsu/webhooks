import collections
import hashlib
import hmac
import logging

import six
from datetime import datetime

digest = None
signature = None
with open('../example_data/example_github_payload.json') as f:
    payload = f.read().strip()
with open('../example_data/example_github_signature.txt') as f:
    signature = f.read().strip()

start = datetime.now()
for x in range(0, 1000):
    digest = hmac.new('secret', payload, hashlib.sha1).hexdigest()
    hmac.compare_digest(digest, signature)
end = datetime.now()
diff = end - start
print("Total seconds {}".format(diff.total_seconds()))

print("Signature: {}".format(signature))
print("Digest:    {}".format(digest))

print hmac.compare_digest(digest, signature)

