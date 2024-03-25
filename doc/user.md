# User API Spec

## Register User
Endpoint: POST /api/users

Request Body:
```json
{
    "email": "abdi@example.com",
    "name": "Abdi Alidrus",
    "password": "rahasia",
    "role": "admin"
}
```

Response Body (Success):
```json
{
    "data": {
      "email": "abdi@example.com",
      "name": "Abdi Alidrus",
      "role": "admin"
    }
}
```

Response Body (Failed):
```json
{
    "errors": "Email already registered"
}
```

## Login User
Endpoint: POST /api/users/login

Request Body:
```json
{
    "email": "abdi@example.com",
    "password": "rahasia"
}
```

Response Body (Success):
```json
{
  "data": {
    "email": "abdi@example.com",
    "name": "Abdi Alidrus",
    "role": "admin"
  }
}
```

Response Body (Failed):
```json
{
    "errors": "Email or password is wrong"
}
```

## Get User
Endpoint: GET /api/users/current

Headers:
- Authorization: token

Response Body (Success):
```json
{
  "data": {
      "email": "abdi@example.com",
      "name": "Abdi Alidrus",
      "role": "admin"
    }
}
```

Response Body (Failed):
```json
{
    "errors": "Unauthorized"
}
```

## Update User
Endpoint: PATCH /api/users/current

Headers:
- Authorization: token

Request Body:
```json
{
    "password": "rahasia",
    "name": "Abdi Alidrus",
    "role": "admin"
}
```

Response Body (Success):
```json
{
    "data": {
      "email": "abdi@example.com",
      "name": "Abdi Alidrus",
      "role": "admin"
    }
}
```

## Logout User
Endpoint: DELETE /api/users/current

Headers:
- Authorization: token

Response Body (Success):
```json
{
    "data": true
}
```