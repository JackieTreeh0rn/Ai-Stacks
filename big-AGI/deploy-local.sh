#!/bin/bash

# set -o allexport
# . ./.env


# Docker
export STACK_NAME="big-agi"
export PUID=$(id -u)
export PGID=$(id -g)
#Deploy
docker-compose -f docker-compose.yml up -d