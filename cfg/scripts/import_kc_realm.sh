#!/bin/sh

docker run \
  --rm \
  --name workshop-keycloak \
  -p 8443:8443 \
  -e DB_VENDOR=H2 \
  -e KEYCLOAK_USER=admin \
  -e KEYCLOAK_PASSWORD=admin \
  -e KEYCLOAK_IMPORT=/tmp/realm.json \
  -v $(pwd)/realm.json:/tmp/realm.json \
  jboss/keycloak:latest
