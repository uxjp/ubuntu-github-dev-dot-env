#!/bin/bash

source ./.env

NAME=github-ssh

./build_image.sh $NAME

if [ "$(docker ps -aq -f name=$NAME)" ]; then
    echo "Container with the same name detected before this script run. Stopping and removing the container..."
    docker stop $NAME
    docker rm $NAME
fi

docker run -it --name $NAME $NAME bash -c "git config --global user.name $GIT_USERNAME  && git config --global user.email $GIT_EMAIL && bash"
