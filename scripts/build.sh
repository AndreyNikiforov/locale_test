#!/usr/bin/env sh
docker build -f Dockerfile.$1 -t $1 --progress plain .
# --no-cache