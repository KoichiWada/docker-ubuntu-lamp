#!/usr/bin/env bash

IMAGE=wada/ubuntu-lamp
SITE_NAME=lamp

if [ -z "$1" -o -z "$2" -o -z "$3" ]; then
    echo "Usage: $(basename $0) CONTANIER_NAME HTTP_PORT SSH_PORT"
    exit 1
fi

CONTAINER_NAME=$1
HTTP_PORT=$2
SSH_PORT=$3
${HTTP_PORT}
docker-add-host ${SITE_NAME}
docker run -d -p ${HTTP_PORT}:80 -p ${SSH_PORT}:22 --name ${CONTAINER_NAME} ${IMAGE}

sleep 1
open http://${SITE_NAME}:${HTTP_PORT}
