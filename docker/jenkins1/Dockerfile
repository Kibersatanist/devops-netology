FROM ubuntu:latest
RUN apt update && apt upgrade -y && \
    apt install -y git vim wget gnupg2 && \
    ln -fs /usr/share/zoneinfo/Europe/Moscow /etc/localtime && \
    apt-get install -y tzdata && \
    apt install -y openjdk-8-jre

RUN wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | apt-key add - && \
    sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' && \
    apt update && \
    apt install -y jenkins

CMD service jenkins start && bash

EXPOSE 8080/TCP
