import requests

url = "http://localhost:9600/predict"

client = {"job": "management", "duration": 400, "poutcome": "success"}
response = requests.post(url, json=client).json()

print(response)