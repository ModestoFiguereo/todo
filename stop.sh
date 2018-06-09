#!/usr/bin/env bash

docker-compose -f ./docker-compose/services.yml stop
docker-compose -f ./docker-compose/infrastructure.yml stop
