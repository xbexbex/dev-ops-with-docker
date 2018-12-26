FROM ubuntu:16.04 

WORKDIR /dir

EXPOSE 8000

RUN apt-get update && apt-get install -y git curl

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash

RUN apt-get install -y nodejs

RUN git clone https://github.com/docker-hy/backend-example-docker

WORKDIR /dir/backend-example-docker

RUN npm install

ENTRYPOINT npm start dir/backend-example-docker/
