FROM ubuntu:24.10

USER 0
RUN apt update
RUN apt install curl gpg -y
RUN curl -fsSL https://artifacts.elastic.co/GPG-KEY-elasticsearch |gpg --dearmor -o /usr/share/keyrings/elastic.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/elastic.gpg] https://artifacts.elastic.co/packages/7.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-7.x.list
RUN apt update
RUN apt install elasticsearch
COPY elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
RUN service elasticsearch start
EXPOSE 9200
CMD ["sleep", "inf"]