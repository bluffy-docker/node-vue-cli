#!/bin/bash

REGISTRY=""
REGISTRY_PATH="bluffy2006/node-vue-cli"


VERSION=$(head -n 1 VERSION)
IMAGE=${REGISTRY}${REGISTRY_PATH}
docker login ${REGISTRY}

docker build -t ${IMAGE}:${VERSION} .
docker tag ${IMAGE}:${VERSION} ${IMAGE}:latest

docker push ${IMAGE}:${VERSION}
docker push ${IMAGE}:latest

