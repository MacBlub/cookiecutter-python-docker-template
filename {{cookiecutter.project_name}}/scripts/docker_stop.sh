#!/bin/bash
set -x

# Constants
USERNAME=""
IMAGE="{{cookiecutter.project_name}}"
VERSION="latest"
CONTAINER="devel_{{cookiecutter.project_name}}"

# Clean docker
docker stop ${CONTAINER}
docker rm ${CONTAINER}

