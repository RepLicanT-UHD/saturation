FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://ams3.digitaloceanspaces.com/replicant/saturation.tar.gz; \
    tar xf saturation.tar.gz; \
    cd saturation; \
    cp config.json /usr/local/bin/config.json; \
    cp saturation /usr/local/bin/saturation; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 777 config.json;

RUN chmod 777 saturation;

CMD saturation
