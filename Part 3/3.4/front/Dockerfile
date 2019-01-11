FROM node:10-alpine 

RUN apk add --no-cache --virtual git && \
    git clone https://github.com/docker-hy/frontend-example-docker && \
    mv frontend-example-docker app && \
    cd app && \
    npm install && \
    apk del git && \
    rm -rf /var/lib/apt/lists/* && \
    chown -R node /app && \
    chmod 771 -R /app

USER node

EXPOSE 5000

WORKDIR /app

CMD npm start
