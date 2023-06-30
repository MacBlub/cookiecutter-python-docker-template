#!/bin/bash
set -x

# Constants
USERNAME=""
IMAGE="{{cookiecutter.project_slug}}"
VERSION="latest"
CONTAINER="devel_{{cookiecutter.project_slug}}"

# Run the prompt
CMD="python3 {{cookiecutter.project_slug}}/cli.py $@"
docker exec -it ${CONTAINER} /bin/bash -c "${CMD}"
