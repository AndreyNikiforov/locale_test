#!/usr/bin/env sh
docker build -f Dockerfile.$1 -t $1 .