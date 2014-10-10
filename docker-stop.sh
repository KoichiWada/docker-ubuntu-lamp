#!/usr/bin/env bash
if [ -z "$1" ]; then
    echo "Usage: $(basename $0) CONTAINER_NAME"
    exit 1
fi

CONTAINER_NAME=$1
docker stop ${CONTAINER_NAME}
