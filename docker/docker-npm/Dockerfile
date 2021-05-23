FROM node:latest

RUN apt update && apt -y upgrade && apt install -y net-tools vim screen

RUN git clone https://github.com/simplicitesoftware/nodejs-demo.git && \
	cd nodejs-demo && npm install

EXPOSE 3000
WORKDIR nodejs-demo
ENTRYPOINT ["/usr/local/bin/npm", "start", "0.0.0.0"]