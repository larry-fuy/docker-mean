#!/bin/sh
docker build -t fuy/docker-mean .
docker run -d -p 127.0.0.1:8080:8080 fuy/docker-mean
