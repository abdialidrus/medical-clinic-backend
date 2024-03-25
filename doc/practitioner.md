# Practitioner API Spec

## Register Practitioner
Endpoint: POST /api/practitioners

Headers:
- Authorization: token

Request Body:
```json
{
  "name": "Karima Alaydrus",
  "nik": "367400001111223",
  "email": "karima@example.com",
  "phone": "0812202020200",
  "str_number": "2938/28377/STR/00001",
  "ihs_number": "N10000001",
  "specialty": "Penyakit dalam kardiovaskular",
  "address": "Gd. Prof. Dr. Sujudi Lt.5, Jl. H.R. Rasuna Said Blok X5 Kav. 4-9 Kuningan",
  "postal_code": "123342"
}
```

Response Body (Success):
```json
{
  "data": {
    "name": "Karima Alaydrus",
    "nik": "367400001111223",
    "email": "karima@example.com",
    "phone": "0812202020200",
    "str_number": "2938/28377/STR/00001",
    "ihs_number": "N10000001",
    "specialty": "Penyakit dalam kardiovaskular",
    "address": "Gd. Prof. Dr. Sujudi Lt.5, Jl. H.R. Rasuna Said Blok X5 Kav. 4-9 Kuningan",
    "postal_code": "123342",
    "created_at": "2019-02-03 12:13:14.000000"
  }
}
```

Response Body (Failed):
```json
{
    "errors": "Email already registered"
}
```

## Get Practitioner
Endpoint: GET /api/practitioners/:practitionerId

Headers:
- Authorization: token

Response Body (Success):
```json
{
  "data": {
    "name": "Karima Alaydrus",
    "nik": "367400001111223",
    "email": "karima@example.com",
    "phone": "0812202020200",
    "str_number": "2938/28377/STR/00001",
    "ihs_number": "N10000001",
    "specialty": "Penyakit dalam kardiovaskular",
    "address": "Gd. Prof. Dr. Sujudi Lt.5, Jl. H.R. Rasuna Said Blok X5 Kav. 4-9 Kuningan",
    "postal_code": "123342",
    "created_at": "2019-02-03 12:13:14.000000"
  }
}
```

## Update Practitioner
Endpoint: PUT /api/practitioners/:practitionerId

Headers:
- Authorization: token

Request Body:
```json
{
  "name": "Karima Alaydrus",
  "nik": "367400001111223",
  "email": "karima@example.com",
  "phone": "0812202020200",
  "str_number": "2938/28377/STR/00001",
  "ihs_number": "N10000001",
  "specialty": "Penyakit dalam kardiovaskular",
  "address": "Gd. Prof. Dr. Sujudi Lt.5, Jl. H.R. Rasuna Said Blok X5 Kav. 4-9 Kuningan",
  "postal_code": "123342"
}
```

Response Body (Success):
```json
{
  "data": {
    "name": "Karima Alaydrus",
    "nik": "367400001111223",
    "email": "karima@example.com",
    "phone": "0812202020200",
    "str_number": "2938/28377/STR/00001",
    "ihs_number": "N10000001",
    "specialty": "Penyakit dalam kardiovaskular",
    "address": "Gd. Prof. Dr. Sujudi Lt.5, Jl. H.R. Rasuna Said Blok X5 Kav. 4-9 Kuningan",
    "postal_code": "123342"
  }
}
```

## Remove Practitioner
Endpoint: PUT /api/practitioners/:practitionerId

Headers:
- Authorization: token

Response Body (Success):
```json
{
  "data": true
}
```

## Search Practitioner
Endpoint: GET /api/practitioners/

Query Params:
- name: string
- page: number, default 1
- size: number, default 10

Response Body (Success):
```json
{
  "data": [
    {
      "name": "Karima Alaydrus",
      "nik": "367400001111223",
      "email": "karima@example.com",
      "phone": "0812202020200",
      "str_number": "2938/28377/STR/00001",
      "ihs_number": "N10000001",
      "specialty": "Penyakit dalam kardiovaskular",
      "address": "Gd. Prof. Dr. Sujudi Lt.5, Jl. H.R. Rasuna Said Blok X5 Kav. 4-9 Kuningan",
      "postal_code": "123342",
      "created_at": "2019-02-03 12:13:14.000000"
    },
    {
      "name": "Karima Alaydrus",
      "nik": "367400001111223",
      "email": "karima@example.com",
      "phone": "0812202020200",
      "str_number": "2938/28377/STR/00001",
      "ihs_number": "N10000001",
      "specialty": "Penyakit dalam kardiovaskular",
      "address": "Gd. Prof. Dr. Sujudi Lt.5, Jl. H.R. Rasuna Said Blok X5 Kav. 4-9 Kuningan",
      "postal_code": "123342",
      "created_at": "2019-02-03 12:13:14.000000"
    }
  ],
  "paging": {
    "current_page": 1,
    "total_page": 10,
    "size": 10
  }
}
```