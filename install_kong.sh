#!/bin/bash
set -xe;

#mkdir test && cd test && \
git clone https://github.com/abrahamjoc/docker-compose-kong-konga.git && \ ## thanks to abrahamjoc
cd docker-compose-kong-konga && \
sed -i 's/1337:/8080:/' docker-compose.yml && \
sed -i 's/8000:/80:/' docker-compose.yml && \
sed -i 's/8443:/443:/' docker-compose.yml && \

sudo docker-compose up -d
