#!/bin/bash
baseDir=$(pwd)
cfgDir=$baseDir"/cfg"

keycloakVolume=$cfgDir"/volumes/keycloak/data/*"
keycloakCompose=$cfgDir"/keycloak/docker-compose.keycloak.yml"
echo -e "\n"
echo "--CLEAN UP Container and Volume--"
echo -e "\n"
rm -rf ${keycloakVolume}
docker rm -f workshop-keycloak
docker rm -f workshop-keycloak-postgres
echo -e "\n"
echo "--Start Docker Containers--"
echo -e "\n"
echo "${keycloakCompose}"
docker-compose -f ${keycloakCompose} up
