FROM debian:stretch

RUN apt-get update && apt-get -y install git curl unzip wget

RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /home/gitpod

ENV PUB_CACHE /home/gitpod/.pub_cache
ENV PATH ${PATH}:/home/gitpod/flutter/bin

RUN git clone https://github.com/flutter/flutter && \
    /home/gitpod/flutter/bin/flutter config --enable-web
