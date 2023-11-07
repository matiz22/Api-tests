MY_LOCALHOST="http://localhost"
MY_PORT="8000"

curl -X GET "$MY_LOCALHOST:$MY_PORT/goals"
curl -X GET "$MY_LOCALHOST:$MY_PORT/goals/1"
curl -X POST -H "Content-Type: application/json" -d '{
  "id": "a6e7b9ac-3435-4d67-8d4c-65c8a0be1df7",
  "due_date": "2023-12-31",
  "frequency": "daily",
  "comment": [],
  "progress": 0.0,
  "reminders": [],
  "notes": [],
  "privacy": "public",
  "shared_with": [],
  "tags": [],
  "linked_resources": [],
  "badges": []
}' "$MY_LOCALHOST:$MY_PORT/goals"

curl -X PUT -H "Content-Type: application/json" -d '{
  "id": "a6e7b9ac-3435-4d67-8d4c-65c8a0be1df7",
  "due_date": "2023-12-31",
  "frequency": "daily",
  "comment": [],
  "progress": 50.0,
  "reminders": [],
  "notes": [],
  "privacy": "public",
  "shared_with": [],
  "tags": [],
  "linked_resources": [],
  "badges": []
}' "$MY_LOCALHOST:$MY_PORT/goals/1"

curl -X DELETE "$MY_LOCALHOST:$MY_PORT/goals/1"
