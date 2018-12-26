FROM ubuntu:16.04 

RUN apt-get update && apt-get install -y curl

COPY script.sh /scripts/script.sh

CMD ["/bin/bash", "/scripts/script.sh"]