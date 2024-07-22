FROM ubuntu:oracular
USER 0
RUN apt update
RUN apt install -y curl gpg
RUN curl -fsSL https://artifacts.elastic.co/GPG-KEY-elasticsearch | gpg --dearmor -o /usr/share/keyrings/elastic.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/elastic.gpg] https://artifacts.elastic.co/packages/7.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-7.x.list
RUN apt update
RUN apt install -y elasticsearch
ADD config/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
EXPOSE 9200
USER elasticsearch
CMD ["/usr/share/elasticsearch/bin/elasticsearch","start"]
#RUN curl -X GET "localhost:9200"