#/bin/bash
docker build --tag 'elastic-ubuntu24' .
docker rm -f elasticsearch
docker run -p 9200:9200 -dit --rm --name elasticsearch 'elastic-ubuntu24'

docker ps