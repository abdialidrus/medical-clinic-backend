# Patient API Spec

## Create Patient
Endpoint: POST /api/patients

Headers:
- Authorization: token

Request Body:
```json
{
  "patient_nik": "727273833929",
  "patient_name": "Muh. Abdi",
  "patient_address": "Jl. Percontohan Jatirangga, Jatisampurna, Bekasi"
}
```

Response Body:

```json
{
  "data": {
    "id": 1,
    "patient_nik": "727273833929",
    "patient_name": "Muh. Abdi",
    "patient_address": "Jl. Percontohan Jatirangga, Jatisampurna, Bekasi"
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
    "patient_nik": "727273833929",
    "patient_name": "Muh. Abdi",
    "patient_address": "Jl. Percontohan Jatirangga, Jatisampurna, Bekasi",
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
  "patient_name": "Muh. Abdi",
  "patient_address": "Jl. Percontohan Jatirangga, Jatisampurna, Bekasi"
}
```

Response Body:

```json
{
  "data": {
    "id": 1,
    "patient_nik": "727273833929",
    "patient_name": "Muh. Abdi",
    "patient_address": "Jl. Percontohan Jatirangga, Jatisampurna, Bekasi",
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
      "patient_nik": "727273833929",
      "patient_name": "Muh. Abdi",
      "patient_address": "Jl. Percontohan Jatirangga, Jatisampurna, Bekasi",
      "created_at": "2019-02-03 12:13:14.000000"
    },
    {
      "id": 2,
      "patient_nik": "727273833929",
      "patient_name": "Muh. Abdi",
      "patient_address": "Jl. Percontohan Jatirangga, Jatisampurna, Bekasi",
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