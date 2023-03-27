FROM python:3.10-slim

MAINTAINER Sebastian Zumbrunn <sebastian.zumbrunn@pm.me>
LABEL org.opencontainers.image.source=https://github.com/Seppli11/python-for-burndown-chart-docker

RUN apt-get update && apt-get install -y make && rm -rf /var/lib/apt/lists/*

RUN useradd --system --create-home --home-dir /home/jenkins --shell /bin/bash --gid root --groups sudo --uid 1000 jenkins
USER jenkins
WORKDIR /home/jenkins
