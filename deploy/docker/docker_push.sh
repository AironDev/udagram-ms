#!/usr/bin/env bash

set -euo pipefail

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker-compose -f deploy/docker/docker-compose-build.yml push
