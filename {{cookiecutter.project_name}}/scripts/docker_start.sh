#!/bin/bash
set -x

# Constants
USERNAME=""
IMAGE="{{cookiecutter.project_name}}"
VERSION="latest"
CONTAINER="devel_{{cookiecutter.project_name}}"

# Include in docker run to get access to DISPLAY
MOUNT_DISPLAY="--mount type=bind,source=/tmp/.X11-unix,target=/tmp/.X11-unix --mount type=bind,source=/home/${USERNAME}/.Xauthority,target=/root/.Xauthority -e DISPLAY=\"${DISPLAY}\""
MOUNT_NETWORK="--network host"

# Start container
docker run --name ${CONTAINER} -d --mount type=bind,source=$(pwd),target=/app ${MOUNT_NETWORK} -it ${IMAGE}:${VERSION}

