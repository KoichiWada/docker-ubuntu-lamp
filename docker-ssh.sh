#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "Usage: $(basename 0) SSH_PORT"
fi

USER=wada
PORT=$1
IP=$(boot2docker ip 2>/dev/null)

ssh -p $PORT $USER@$IP
