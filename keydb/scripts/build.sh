BN=$(git rev-parse master | cut -c1-8)
docker build . -t docker.pkg.github.com/arelplane/docker-images/keydb-redisearch:$BN && \
  docker build . -t docker.pkg.github.com/arelplane/docker-images/keydb-redisearch:latest
