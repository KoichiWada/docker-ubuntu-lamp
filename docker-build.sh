#!/usr/bin/env bash

TAG="wada/ubuntu-lamp"

cd $(dirname $0)/docker

if [ -n "$1" ]; then
    htpasswd -c .htpasswd $1
fi

cp $HOME/.ssh/id_rsa.pub .
cp $HOME/.ssh/id_rsa .

docker build -t $TAG .

docker rm $(docker ps -aq)
docker rmi $(docker images | awk '/^<none>/ { print $3 }')
