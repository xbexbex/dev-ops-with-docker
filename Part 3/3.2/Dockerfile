FROM ubuntu:16.04 

ENV LC_ALL=C.UTF-8 

RUN apt-get update && \
    apt-get install wget ffmpeg python-pip -y && \
    pip install pycrypto && \
    pip install --user --upgrade yle-dl && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /downloads

ENTRYPOINT [ "/root/.local/bin/yle-dl" ]
