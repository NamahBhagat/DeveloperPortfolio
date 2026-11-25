# API Summary

## What is a REST API?
A REST API lets one program ask another program for data over the internet using normal web requests. I send a request to a URL and the server replies with data, usually in JSON format.

## HTTP Status Codes Observed
- **200**: the request worked and the server sent back the data.
- **404**: the server could not find what I asked for, for example a wrong URL.

## jq Filter Used
- `jq` reads the JSON data and filters it.
- `{ ... }` builds a new small object with only the fields I want.
- `name:.name` takes the name field from my profile.
- `repos:.public_repos` takes the number of public repositories.
- `followers:.followers` takes my follower count.
- `joined:.created_at` takes the date my account was created.
