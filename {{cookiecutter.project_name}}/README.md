# {{cookiecutter.project_name}}

{{cookiecutter.project_short_description}}

{{cookiecutter.project_full_description}}


## Installation

Installation via pip
```
pip install git+https://${GITLAB_TOKEN_USER}@${GITLAB_TOKEN}@github.com/${GITLAB_USERNAME}/${PROJECTNAME}.git
```

## Usage

The program is using plain python, but builds on top of Docker, Makefile and Bash. See "Makefile", the folder "scripts" (bash) and the folder "docker" (docker) for more details!

### TLDR
Run the program with:
```
make run --help
```

### Detailed Explanation

Start the docker-container:
```
make start
```

Stop the docker-container:
```
make stop
```

Run the program with:
```
make run --help
```


### Examples

Here we show our use-case on an in-repository example:

```
make run -vvv --input somefile.json
```

# Authors
- {{cookiecutter.author}} ({{cookiecutter.email}})

