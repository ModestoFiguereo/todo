#!/usr/bin/env bash

# get up all databases
readonly databases=(
  "mysql"
  "mssql"
  "mariadb"
  "postgres"
  "mongo"
  "couchdb"
  "neo4j"
  "redis"
  "riak-coordinator"
  "riak-member"
  "cassandra"
);

docker-compose -f ./docker-compose/infrastructure.yml up -d "${databases[@]}";

# await for postgres to be ready.
./wait-for-it.sh postgres:5432 -- echo "postgres is up";

# get up kong components
readonly kong_jobs=(
  "kong-create-database"
  "kong-migration"
);

docker-compose -f ./docker-compose/infrastructure.yml up -d "${kong_jobs[@]}";

sleep 10;

readonly kong_components=(
  "kong-dashboard"
  "kong"
);

docker-compose -f ./docker-compose/infrastructure.yml up -d "${kong_components[@]}";

docker-compose -f ./docker-compose/services.yml up -d
