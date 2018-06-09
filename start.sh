#!/usr/bin/env bash

docker-compose -f ./docker-compose/services.yml start
docker-compose -f ./docker-compose/infrastructure.yml start
