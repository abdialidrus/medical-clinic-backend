# Patient API Spec

## Create Patient
Endpoint: POST /api/patients

Headers:
- Authorization: token

Notes:
- date format for `dob` field is **dd-MM-yyyy**
- value for `sex` are **M** for Male or **F** for Female

Request Body:
```json
{
  "nik": "727273833929",
  "name": "Muh. Abdi",
  "address": "Jl. Percontohan Jatirangga, Jatisampurna, Bekasi",
  "dob": "25-04-1993",
  "sex": "M"
}
```

Response Body:

```json
{
  "data": {
    "id": 1,
    "nik": "727273833929",
    "name": "Muh. Abdi",
    "address": "Jl. Percontohan Jatirangga, Jatisampurna, Bekasi",
    "dob": "25-04-1993",
    "sex": "M"
  }
}
```

Response Body (failed):

```json
{
  "errors": "Patient NIK already registered"
}
```

## Get Patient
Endpoint: GET /api/patients/:patientId

Headers:
- Authorization: token

Response Body:

```json
{
  "data": {
    "id": 1,
    "nik": "727273833929",
    "name": "Muh. Abdi",
    "address": "Jl. Percontohan Jatirangga, Jatisampurna, Bekasi",
    "dob": "25-04-1993",
    "sex": "M",
    "created_at": "2019-02-03 12:13:14.000000"
  }
}
```

## Update Patient
Endpoint: PUT /api/patients/:patientId

Headers:
- Authorization: token

Request Body:
```json
{
  "name": "Muh. Abdi",
  "address": "Jl. Percontohan Jatirangga, Jatisampurna, Bekasi",
  "dob": "25-04-1993",
  "sex": "M"
}
```

Response Body:

```json
{
  "data": {
    "id": 1,
    "nik": "727273833929",
    "name": "Muh. Abdi",
    "address": "Jl. Percontohan Jatirangga, Jatisampurna, Bekasi",
    "dob": "25-04-1993",
    "sex": "M",
    "created_at": "2019-02-03 12:13:14.000000"
  }
}
```

## Remove Patient
Endpoint: DELETE /api/patients/:patientId

Headers:
- Authorization: token

Response Body:

```json
{
  "data": true
}
```

## Search Patient
Endpoint: GET /api/patients/

Headers:
- Authorization: token

Query Params:
- `patient_nik`: string
- `patient_name`: string

Response Body:

```json
{
  "data": [
    {
      "id": 1,
      "nik": "727273833929",
      "name": "Muh. Abdi",
      "address": "Jl. Percontohan Jatirangga, Jatisampurna, Bekasi",
      "dob": "25-04-1993",
      "sex": "M",
      "created_at": "2019-02-03 12:13:14.000000"
    },
    {
      "id": 2,
      "nik": "727273833929",
      "name": "Muh. Abdi",
      "address": "Jl. Percontohan Jatirangga, Jatisampurna, Bekasi",
      "dob": "25-04-1993",
      "sex": "M",
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