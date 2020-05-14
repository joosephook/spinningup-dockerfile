# spinningup-dockerfile

This repository consists of a Dockerfile with a corresponding docker-compose.yaml. The reason is that [OpenAI Spinning Up](https://github.com/openai/spinningup) was not straightforward to install in a Docker container (e.g. `pip install git+git://github.com/openai/spinningup` did not work for some reason). The provided Dockerfile should successfully build and install spinningup. The docker-compose.yaml comes with a `test-install` service to test that your installation was successful.

The main insight is that first cloning the repository and then installing it with `pip` works.

Tested on `Ubuntu 18.04.2 LTS`.

# Usage
First, add any other dependencies you need to the Dockerfile.

To build the container
```bash
docker-compose build container
```

Test if spinningup was installed properly 
```bash
docker-compose run test-install
```

Run your own code
```bash
docker-compose run container python mycode.py
```
