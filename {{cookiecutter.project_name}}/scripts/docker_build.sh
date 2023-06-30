#!/bin/bash
set -x

# Constants
USERNAME=""
IMAGE="{{cookiecutter.project_slug}}"
VERSION="latest"
CONTAINER="devel_{{cookiecutter.project_slug}}"

# Build Container
docker build -t ${IMAGE}:${VERSION} . \
		     -f ./docker/Dockerfile --no-cache

