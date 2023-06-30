#!/bin/bash
set -x

# Constants
USERNAME=""
IMAGE="{{cookiecutter.project_name}}"
VERSION="latest"
CONTAINER="devel_{{cookiecutter.project_name}}"

# Build Container
docker build -t ${IMAGE}:${VERSION} . \
		     -f ./docker/Dockerfile --no-cache

