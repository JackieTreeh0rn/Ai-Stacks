#!/bin/bash

# set -o allexport
# . ./env/owui.env

# Traefik
export ROUTER_NAME="openwebui"
export ROOT_DOMAIN="your-domain.co"

# Docker
export STACK_NAME="open-webui"
export BACKEND_NETWORK_NAME=${STACK_NAME}_backend
export PUID=$(id -u)
export PGID=$(id -g)
# Create Network (customize)
docker network create -d overlay --subnet=10.0.13.0/24 --gateway=10.0.13.1 ${BACKEND_NETWORK_NAME}
# Deploy
docker stack deploy -c docker-stack-compose.yml ${STACK_NAME}
