FROM python:3.7-slim

RUN apt update && apt install libopenmpi-dev git --yes

WORKDIR /deps

RUN git clone https://github.com/openai/spinningup && python3 -m pip install -e spinningup

WORKDIR /app

