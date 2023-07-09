#!/bin/bash

CONTAINER_ID=$1
REPO=https://github.com/ChappieM/dfv.git
SCRIPT_DIR=/var/tmp/dfv

docker exec $CONTAINER_ID git clone $REPO $SCRIPT_DIR
docker exec -u root $CONTAINER_ID `${SCRIPT_DIR}/scripts/setup.sh`
docker exec $CONTAINER_ID `${SCRIPT_DIR}/scripts/clone_my_settings.sh`
