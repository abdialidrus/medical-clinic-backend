# Encounter API Spec

## Create Encounter
Endpoint: POST /api/encounters

Headers:
- Authentication: token

Request Body:
```json
{
  "patient_nik": "72728192318239",
  "practitioner_id": 1
}
```

Response Body:
```json
{
  "id": 1,
  "patient_nik": "727273833929",
  "practitioner_id": 1,
  "status": "in-progress",
  "queue_number": 1
}
```

Encounter Statuses: `in-progress` `finished`

Response Body (failed: Patient still has unfinished encounter in the same day):
```json
{
  "errors": "Patient still has unfinished Encounter"
}
```

## Get Encounter
Endpoint: GET /api/encounters/:encounterId

Headers:
- Authorization: token

Response Body:

```json
{
  "data": {
    "id": 1,
    "patient_nik": "727273833929",
    "practitioner_id": 1,
    "status": "in-progress",
    "queue_number": 1,
    "created_at": "2019-02-03 12:13:14.000000"
  }
}
```

## Update Encounter
Endpoint: PUT /api/encounters/:encounterId

Headers:
- Authorization: token

Request Body:
```json
{
  "patient_nik": "72728192318239",
  "practitioner_id": 1,
  "status": "finished"
}
```

Response Body:

```json
{
  "data": {
    "id": 1,
    "patient_nik": "727273833929",
    "practitioner_id": 1,
    "status": "finished",
    "queue_number": 1
  }
}
```

## Remove Encounter
Endpoint: DELETE /api/encounters/:encounterId

Headers:
- Authorization: token

Response Body:

```json
{
  "data": true
}
```

## Search Encounter
Endpoint: GET /api/encounters/

Headers:
- Authorization: token

Query Params:
- patient_nik: string
- patient_name: string
- practitioner_id: number
- page: number, default 1
- size: number, default 10

Response Body:

```json
{
  "data": [
    {
      "id": 1,
      "patient_nik": "727273833929",
      "practitioner_id": 1,
      "status": "finished",
      "queue_number": 1,
      "created_at": "2019-02-03 12:13:14.000000"
    },
    {
      "id": 2,
      "patient_nik": "727273833929",
      "practitioner_id": 1,
      "status": "in-progress",
      "queue_number": 1,
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