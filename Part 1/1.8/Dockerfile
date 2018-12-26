FROM ubuntu:16.04 

EXPOSE 8080

RUN apt-get update && apt-get install -y git curl

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash

RUN apt-get install -y nodejs

RUN git clone https://github.com/xbexbex/react-webpack-typescript-babel-sass-template

WORKDIR /react-webpack-typescript-babel-sass-template

RUN npm install

ENTRYPOINT npm start
