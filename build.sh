#!/bin/bash

export GIT_COMMIT=$(git rev-parse HEAD)
echo $GIT_COMMIT

docker-compose build --no-cache
