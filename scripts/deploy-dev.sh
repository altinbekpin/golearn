#!/bin/bash

if [ -z ${SHA+x} ]; then SHA=$(git rev-parse HEAD); fi

docker build -t learning/echo1:lastest-dev -f ./echoservers/echo1/Dockerfile.dev ./echoservers/echo1
docker build -t altinbekpin/echo1:$SHA -f ./echoservers/echo1/Dockerfile.dev  ./echoservers/echo1

docker push altinbekpin/echo1:lastest-dev
docker push altinbekpin/echo1:$SHA
