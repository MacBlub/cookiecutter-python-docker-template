#!/bin/bash
set -x

# Constants
USERNAME=""
IMAGE="{{cookiecutter.project_name}}"
VERSION="latest"
CONTAINER="devel_{{cookiecutter.project_name}}"

# Run the prompt
CMD="python3 {{cookiecutter.project_slug}}/cli.py $@"
docker exec -it ${CONTAINER} /bin/bash -c "${CMD}"
