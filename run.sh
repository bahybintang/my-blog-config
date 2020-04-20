#!/bin/bash

docker-compose -f docker-compose.staging.yml up -d
docker-compose up --no-deps certbot
docker-compose stop webserver
docker-compose up -d --force-recreate --no-deps webserver