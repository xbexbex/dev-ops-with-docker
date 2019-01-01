FROM ubuntu:16.04 

RUN apt-get update && \
    apt-get install -y curl git && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt-get install -y nodejs && \
    git clone https://github.com/docker-hy/backend-example-docker && \
    mv backend-example-docker app && \
    cd app && \
    npm install && \
    apt-get purge -y --auto-remove curl git && \ 
    rm -rf /var/lib/apt/lists/*

EXPOSE 8000

WORKDIR /app

CMD npm start
