# Traefik Docker Registry

A Docker Compose configuration to run a private [Docker registry](https://docs.docker.com/registry/) secured with basic authentication and [Joxit/docker-registry-ui](https://github.com/Joxit/docker-registry-ui) behind a [Traefik](https://traefik.io/) reverse proxy.

## Usage

1. Clone this repository.
2. Copy `.env.example` to `.env` and modify the variables.
3. Run `./start.sh`.

To stop the services, run `docker-compose down`.

Run `./gc.sh` to run garbage collection on the registry.
