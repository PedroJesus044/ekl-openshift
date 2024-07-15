FROM ubi8/ubi

USER 0
RUN yum install java-1.8.0-openjdk -y
COPY elastic-6_x.repo /etc/yum.repos.d/elastic-6_x.repo
RUN yum makecache; yum repolist;
RUN yum provides elasticsearch | grep -i 6.2.*
#RUN update-crypto-policies --set DEFAULT:SHA1
#RUN update-crypto-policies --set LEGACY
RUN yum install -y elasticsearch-6.2.3-1.noarch
