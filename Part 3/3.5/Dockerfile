FROM python:2.7.15-alpine3.8

RUN apk add --no-cache wget ffmpeg && \
    apk add --no-cache gcc libxml2-dev libxslt-dev alpine-sdk && \
    pip install pycrypto && \
    pip install yle-dl && \
    rm -rf /var/lib/apt/lists/* && \
    adduser -S app && \
    mkdir /downloads && \
    chown -R app /downloads && \
    chmod 770 -R /downloads && \
    apk del gcc libxml2-dev alpine-sdk

USER app

WORKDIR /downloads

ENTRYPOINT [ "/usr/local/bin/yle-dl" ]
