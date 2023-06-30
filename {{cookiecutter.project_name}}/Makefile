SHELL=/bin/bash

# Constants used for build and running docker 
# Example: make build IMAGE=my_image_name VERSION=some_version_desc
# Example: make run CONTAINER=my_container_name
# Example: make run -- --version
# Note: The "--" is important!

IMAGE="{{cookiecutter.project_name}}"
VERSION="latest"
CONTAINER="devel_{{cookiecutter.project_name}}"

args = `arg="$(filter-out $@,$(MAKECMDGOALS))" && echo $${arg:-${1}}`

.PHONY: build
build: 
	echo "Makefile build: {{cookiecutter.project_name}}"
	./scripts/docker_build.sh

.PHONY: run
run:
	echo "Makefile run: {{cookiecutter.project_name}}"
	./scripts/docker_run.sh $(call args,)

.PHONY: start
start: 
	echo "Makefile start: {{cookiecutter.project_name}}"
	./scripts/docker_start.sh

.PHONY: stop
stop: 
	echo "Makefile stop: {{cookiecutter.project_name}}"
	./scripts/docker_stop.sh

# Clean repository
.PHONY: clean
clean:
	find . -type d -name __pycache__ -exec rm {} \;
	find . -type d -name '*.pyc' -exec rm {} \;

# Prevent errors if we supply additional arguments
%:
    @:

