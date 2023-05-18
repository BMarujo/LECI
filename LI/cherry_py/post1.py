import requests
url = "http://www.ua.pt"
values = {"nome": "Ana", "idade": 20}
r = requests.post(url, data=values)
print(r.status_code)