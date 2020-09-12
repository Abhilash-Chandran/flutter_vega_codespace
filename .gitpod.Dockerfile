FROM debian:stretch

RUN apt-get update && apt-get -y install git curl unzip wget

RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

USER gitpod

RUN git clone https://github.com/flutter/flutter.git

ENV PUB_CACHE=/home/vscodespace/.pub_cache
ENV PATH ${PATH}:/home/gitpod/bin:/home/gitpod/bin/cache/dart-sdk/bin

RUN flutter config --enable-web
