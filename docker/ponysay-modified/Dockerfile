FROM ubuntu:latest

RUN apt-get update && apt-get install -y software-properties-common && add-apt-repository ppa:vincent-c/ponysay && apt-get update
RUN apt-get install -y ponysay

entrypoint ["/usr/bin/ponysay"]
CMD ["Hey, guys"]
