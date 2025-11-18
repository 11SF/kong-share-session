#!/bin/bash

curl -X POST http://localhost:8000/api/v1/order/create
curl -X POST http://localhost:8000/api/v1/order/create \
  -H "x-api-key: secret"
curl -X POST http://localhost:8000/api/v1/order/create \
  -H "x-api-key: secret2"
curl -X POST http://localhost:8000/api/v1/order/create \
  -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJpbnRlcm5hbCIsImlhdCI6MTc2MzQwOTEwNiwiZXhwIjoxNzk0OTQ5MTk3LCJhdWQiOiJ3d3cuZXhhbXBsZS5jb20iLCJzdWIiOiJqcm9ja2V0QGV4YW1wbGUuY29tIn0.DYXfoe420o-mJhmHT1HkpcShdY_ipOYZu87fSA-GoG4"


curl -X POST http://localhost:8000/api/v1/order/cancel

curl -X POST http://localhost:8000/api/v1/user/login
curl -X GET http://localhost:8000/api/v1/user/get-profile
curl -X GET http://localhost:8000/api/v1/user/get-profile \
  -H "x-api-key: test"
curl -X GET http://localhost:8000/api/v1/user/get-profile \
  -H "x-api-key: test2"
curl -X GET http://localhost:8000/api/v1/user/get-profile \
  -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJpbnRlcm5hbCIsImlhdCI6MTc2MzQ2Nzc5NiwiZXhwIjoxNzk1MDAzNzk2LCJhdWQiOiJ3d3cuZXhhbXBsZS5jb20iLCJzdWIiOiJqcm9ja2V0QGV4YW1wbGUuY29tIn0.RpScf31cDGWEqDpsZBnhTVS-aWX_u1AVCJ-rGAGCMXY"

curl -X POST http://localhost:8000/api/v1/payment/payment \
  -H "x-api-key: test"
curl -X POST http://localhost:8000/api/v1/payment/payment \
  -H "x-api-key: test2"

curl -X POST http://localhost:8000/api/v1/payment/payment

