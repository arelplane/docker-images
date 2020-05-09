BN=$(git rev-parse master | cut -c1-8)
docker push docker.pkg.github.com/arelplane/docker-images/keydb-redisearch:$BN && \
  docker push docker.pkg.github.com/arelplane/docker-images/keydb-redisearch:latest
echo "docker push docker.pkg.github.com/arelplane/docker-images/keydb-redisearch:$BN"
