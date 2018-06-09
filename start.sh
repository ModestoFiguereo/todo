#!/usr/bin/env bash

readonly infrastructure=(
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
  "kong-dashboard"
  "kong"
);
docker-compose -f ./docker-compose/infrastructure.yml start "${infrastructure[@]}"
docker-compose -f ./docker-compose/services.yml start
