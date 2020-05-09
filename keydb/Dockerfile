FROM eqalpha/keydb

RUN apt-get update
RUN apt-get install wget build-essential -y
RUN mkdir /downloads
WORKDIR /downloads

RUN wget https://github.com/RedisLabsModules/RediSearch/archive/v0.19.3.tar.gz
RUN ls -la
RUN tar -xvzf v0.19.3.tar.gz
RUN ls -las
WORKDIR /downloads/RediSearch-0.19.3
RUN ls -la
RUN make all
RUN ls -la ./src
VOLUME [ "/data" ]
ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 6379
CMD ["keydb-server", "/etc/keydb/keydb.conf", "--loadmodule","/downloads/RediSearch-0.19.3/src/redisearch.so"]
