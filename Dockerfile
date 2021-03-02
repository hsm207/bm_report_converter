FROM openjdk:17-slim-buster

RUN apt update && \
    apt install -y git \
        wget