#!/bin/bash

# set -o allexport
# . ./.env


# Docker
export STACK_NAME="big-agi"
export BACKEND_NETWORK_NAME=${STACK_NAME}_backend


docker stack rm ${STACK_NAME}
docker-compose down #local instance
