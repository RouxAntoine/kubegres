#!/bin/bash

# to build

make docker-build-push DOCKER_BINARY=docker.lima IMG=docker.registry:5000/kubegres:latest

make deploy IMG=docker.registry/kubegres:latest

k apply -f ./kubegres.yaml
