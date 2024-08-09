FROM ubuntu:oracular
USER 0
RUN apt update
RUN apt install -y curl gpg default-jdk default-jre
RUN curl -fsSL https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
RUN echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" > /etc/apt/sources.list.d/elastic-7.x.list
RUN apt update
RUN apt install elasticsearch -y
ADD config/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml

RUN chgrp -R 0 /etc/default/elasticsearch && chmod -R g=u /etc/default/elasticsearch
RUN chgrp -R 0 /usr/share/elasticsearch/bin/elasticsearch && chmod -R g=u /usr/share/elasticsearch/bin/elasticsearch

EXPOSE 9200
USER elasticsearch
#CMD ["sleep","inf"]
CMD ["/usr/share/elasticsearch/bin/elasticsearch","start"]
#/usr/share/elasticsearch/bin/elasticsearch start
#RUN curl -X GET "localhost:9200"