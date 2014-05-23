#!/bin/sh
docker build -t fuy/docker-mean .
docker run -d -p 127.0.0.1:80:8080 --rm fuy/docker-mean
