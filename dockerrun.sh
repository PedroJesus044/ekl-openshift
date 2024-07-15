#/bin/bash
docker build --tag 'elastic-ubi8' .
docker run -it 'elastic-ubi8' bash