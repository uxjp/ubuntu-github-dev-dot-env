#!/bin/bash

cp ~/.ssh/id_rsa .
cp ~/.ssh/id_rsa.pub .

NAME=${1:-github-ssh}

docker build -t $NAME .
# old images with the same tag name become dangling images, a docker prune would be necessary for them
