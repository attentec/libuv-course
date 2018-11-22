#!/bin/bash

WORKDIR="$( cd "$(dirname "$0")" ; pwd -P )"

docker run -v $WORKDIR/src:/home/learnuv/src -p 7000:7000 -it natloattentec/libuv-course
