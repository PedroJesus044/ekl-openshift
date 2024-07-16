#/bin/bash
docker build --tag 'elastic-ubuntu24' .
docker run -it 'elastic-ubuntu24' bash