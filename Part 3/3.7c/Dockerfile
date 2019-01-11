FROM docker:18.09.1

RUN apk add --no-cache bash git && \
    rm -rf /var/lib/apt/lists/*

COPY create_image.bash /app/create_image.bash

WORKDIR /app

ENTRYPOINT ["/app/create_image.bash"]
