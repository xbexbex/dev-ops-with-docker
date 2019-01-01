FROM ubuntu:16.04 

WORKDIR /dir

EXPOSE 5000

RUN apt-get update && apt-get install -y git curl

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash

RUN apt-get install -y nodejs

RUN git clone https://github.com/docker-hy/frontend-example-docker

WORKDIR /dir/frontend-example-docker

RUN npm install

RUN npm install -g serve

CMD API_URL="http://localhost:8000" npm start

