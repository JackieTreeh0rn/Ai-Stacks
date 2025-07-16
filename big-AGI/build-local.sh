#!/bin/bash

# set -o allexport
# . ./.env


# Docker
export STACK_NAME="big-agi"


# CLONE Repo
git clone --depth 1 --single-branch https://github.com/enricoros/big-AGI build
# Replace config files as needed
# cp -rvf ./middleware.ts ./build/ #for basic auth

# BUILD - local docker
docker build -t ${STACK_NAME} -f ./build/Dockerfile ./build