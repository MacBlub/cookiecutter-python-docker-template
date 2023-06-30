#!/bin/bash
set -x

# Constants
USERNAME=""
IMAGE="{{cookiecutter.project_slug}}"
VERSION="latest"
CONTAINER="devel_{{cookiecutter.project_slug}}"

# Clean docker
docker stop ${CONTAINER}
docker rm ${CONTAINER}

