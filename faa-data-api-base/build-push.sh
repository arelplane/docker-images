#!/bin/bash
BN=$(git rev-parse master | cut -c1-8)
docker build . -t docker.pkg.github.com/arelplane/docker-images/flyway-data-api-base:$BN
docker build . -t docker.pkg.github.com/arelplane/docker-images/flyway-data-api-base:latest
docker push docker.pkg.github.com/arelplane/docker-images/flyway-data-api-base:latest
docker push docker.pkg.github.com/arelplane/docker-images/flyway-data-api-base:$BN
