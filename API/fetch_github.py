import requests
import json

url = "https://api.github.com/users/NamahBhagat"
response = requests.get(url)
print("Status code:", response.status_code)

data = response.json()
with open("api_response.json", "w") as f:
    json.dump(data, f, indent=4)

print("Name:", data.get("name"))
print("Public repos:", data.get("public_repos"))
print("Saved to api_response.json")
