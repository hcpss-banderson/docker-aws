#!/usr/bin/env bash

docker buildx create --use --name aws_builder

docker buildx build \
    -t banderson/aws \
    --platform=linux/arm64,linux/amd64 \
    --push .

docker buildx rm aws_builder
