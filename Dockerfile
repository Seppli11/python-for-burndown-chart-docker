FROM python:3.10-slim

RUN apt-get update && apt-get install -y make && rm -rf /var/lib/apt/lists/*