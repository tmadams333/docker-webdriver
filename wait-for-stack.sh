#!/bin/bash

set -exu

export DOCKER_IP="$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' "$(hostname)")"

for i in {1..5}; do
    curl "http://$DOCKER_IP:8000" && curl "http://$DOCKER_IP:4444" && break; sleep 5
done
