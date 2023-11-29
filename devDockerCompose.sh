#!/bin/bash

#var
BASE_PATH=$(pwd)
export POSTGRES_VOLUMES=$BASE_PATH/postgresql/data

#log
echo 'BASE_PATH: '$BASE_PATH
echo 'POSTGRES_VOLUME: ' $POSTGRES_VOLUMES

#Create Network
docker network create -d bridge bridge-networks-crto

#docker-compose up
docker-compose -f docker-compose.yml up
