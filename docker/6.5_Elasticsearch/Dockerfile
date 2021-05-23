FROM centos:7

ENV container docker

RUN yum -y update && yum -y upgrade && yum -y install vim
RUN rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
COPY ./elasticsearch.repo /etc/yum.repos.d/elasticsearch.repo
RUN yum install -y --enablerepo=elasticsearch elasticsearch

RUN systemctl enable elasticsearch.service

EXPOSE 9200
CMD ["/usr/sbin/init"]