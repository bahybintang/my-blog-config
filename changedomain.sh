#!/bin/bash

docker-compose -f docker-compose.staging.yml up -d --force-recreate --no-deps webserver
docker-compose up -d --force-recreate --no-deps certbot
docker-compose up -d --force-recreate --no-deps webserver