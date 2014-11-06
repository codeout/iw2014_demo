import json
from httplib import HTTPConnection

session = HTTPConnection('localhost:3000')
session.request('GET', '/devices.json')

response = json.load(session.getresponse())
print(json.dumps(response))
