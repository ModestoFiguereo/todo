#!/usr/bin/env bash

docker-compose -f ./docker-compose/services.yml down --volumes --rmi all
docker-compose -f ./docker-compose/infrastructure.yml down --volumes --rmi all
