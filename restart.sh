#!/bin/bash

docker-compose stop
docker rmi -f $(docker images -q mosquitto)
docker-compose build
docker-compose up -d
