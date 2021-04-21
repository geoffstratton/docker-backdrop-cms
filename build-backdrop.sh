#!/bin/bash

rm Dockerfile
rm docker-entrypoint.sh

wget https://raw.githubusercontent.com/backdrop-ops/backdrop-docker/master/1/apache/docker-entrypoint.sh
chmod +x ./docker-entrypoint.sh

wget https://raw.githubusercontent.com/backdrop-ops/backdrop-docker/master/1/apache/Dockerfile

docker-compose up --force-recreate --detach
docker exec -it backdrop chown -hR www-data:www-data /var/www/html