#!/bin/bash

if [[ `docker-compose ps -q registry` != "" ]]; then
  docker-compose exec registry registry garbage-collect /etc/docker/registry/config.yml
else
  echo "Registry is not running"
fi
