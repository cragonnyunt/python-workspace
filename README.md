# Python Workspace

[![Python Workspace CI](https://github.com/cragonnyunt/python-workspace/actions/workflows/main.yml/badge.svg?branch=develop-3.9)](https://github.com/cragonnyunt/python-workspace/actions/workflows/main.yml)

Python Workspace Docker is built on top of the [development workspace docker](https://github.com/cragonnyunt/development-workspace). It contains the most used tools for Python developers, and prepare environment configuration for developing python apps and websites.

Set of tools installed
- Everything installed on [development workspace docker](https://github.com/cragonnyunt/development-workspace)
- Python
- Pip
- pyenv
- venv
- pandas
- various python libraries (see requirements.txt)

## Pulling the image

```
docker pull cragonnyunt/python-workspace-docker:<<tag>>
```

## Running the image

```
docker run --rm -it \
    -v $(pwd):/workspace \
    cragonnyunt/python-workspace-docker:<<tag>>
```
