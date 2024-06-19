FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    git \
    openssh-client

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y neovim

RUN mkdir /root/.ssh

COPY ./id_rsa /root/.ssh/id_rsa
COPY ./id_rsa.pub /root/.ssh/id_rsa.pub

RUN ssh-keyscan github.com >> /root/.ssh/known_hosts

WORKDIR /app
