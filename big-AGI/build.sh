#!/bin/bash

# set -o allexport
# . ./.env


# Docker
export STACK_NAME="big-agi"


# CLONE Repo
git clone --depth 1 --single-branch https://github.com/enricoros/big-AGI build
# Replace config files as needed
# cp -rvf ./middleware.ts ./build/ #for basic auth

# BUILD - DOCKER HUB
docker login
# docker buildx build --platform "linux/amd64,linux/arm64" -t jackietreehorn/${STACK_NAME}:latest --push -f ./build/Dockerfile ./build
docker build -t jackietreehorn/${STACK_NAME}:latest --push -f ./build/Dockerfile ./build