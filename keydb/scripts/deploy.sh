BN=$(git rev-parse master | cut -c1-8)
kubectl --record deployment.apps/airport-nasr-data set image deployment.v1.apps/airport-nasr-data airport-nasr-data=docker.pkg.github.com/arelplane/parse_nasr_data/parse_nasr_data:$BN
