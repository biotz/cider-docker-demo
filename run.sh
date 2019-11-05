#!/usr/bin/env bash

set -eu -o pipefail

docker-compose down -t0
./docker-env-vars.sh
docker-compose up --build --detach --force-recreate --renew-anon-volumes
docker-compose logs -ft
