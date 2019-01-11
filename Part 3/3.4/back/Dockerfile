FROM node:10-alpine 

RUN apk add --no-cache --virtual git && \
    git clone https://github.com/docker-hy/backend-example-docker && \
    mv backend-example-docker app && \
    cd app && \
    npm install && \
    apk del git && \ 
    rm -rf /var/lib/apt/lists/* && \
    chown -R node /app && \
    chmod 771 -R /app

USER node

EXPOSE 8000

WORKDIR /app

CMD npm start
