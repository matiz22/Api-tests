#!/bin/bash

BASE_API_ENDPOINT="put url"
API_KEY="put here"  

curl -X GET -k -L -H "Authorization: Bearer $API_KEY" "$BASE_API_ENDPOINT/smtp" -H "Content-Type: application/json"

PROFILE_ID="1"
curl -X GET -k -H "Authorization: Bearer $API_KEY" "$BASE_API_ENDPOINT/smtp/$PROFILE_ID"

NEW_PROFILE_DATA='{
  "id": 1,
  "name": "Example Johnny",
  "interface_type": "SMTP",
  "from_address": "Johny Marianno <john@example.com>",
  "host": "smtp.example.com:25",
  "username": "nameuser",
  "password": "wordpass",
  "ignore_cert_errors": true,
  "modified_date": "2016-11-20T14:47:51.4131367-06:00",
  "headers": [
    {
      "key": "X-Header",
      "value": "Foo Bar"
    }
  ]
}'
curl -X POST -k -H "Authorization: Bearer $API_KEY" -H "Content-Type: application/json" -d "$NEW_PROFILE_DATA" "$BASE_API_ENDPOINT/smtp"


PROFILE_ID="1"
curl -X DELETE -k -H "Authorization: Bearer $API_KEY" "$BASE_API_ENDPOINT/smtp/$PROFILE_ID"

UPDATED_PROFILE_DATA='{
  "id": 1,
  "name": "Updated Johnny",
  "interface_type": "SMTP",
  "from_address": "Updated Johnny <updated@example.com>",
  "host": "updated.smtp.example.com:25 url",
  "username": "updatedusername",
  "password": "updatedpassword",
  "ignore_cert_errors": true,
  "modified_date": "2023-11-07T14:47:51.4131367-06:00",
  "headers": [
    {
      "key": "X-Header",
      "value": "Updated Foo Bar"
    }
  ]
}'

PROFILE_ID="1"
curl -X PUT -k -H "Authorization: Bearer $API_KEY" -H "Content-Type: application/json" -d "$UPDATED_PROFILE_DATA" "$BASE_API_ENDPOINT/smtp/$PROFILE_ID"

PROFILE_ID="1"
curl -X DELETE -k -H "Authorization: Bearer $API_KEY" "$BASE_API_ENDPOINT/smtp/$PROFILE_ID"
