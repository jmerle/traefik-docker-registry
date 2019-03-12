#!/bin/bash

# Check if .env file exists
if [ -e .env ]; then
  source .env
else
  echo "Please copy the .env.example file to .env and fill it with correct values."
  exit 1
fi

# Generate the htpasswd file
docker run --rm -ti xmartlabs/htpasswd "${USERNAME}" "${PASSWORD}" > htpasswd

# Start the containers
docker-compose up -d
