FROM debian:stretch

USER root

RUN apt-get update && apt-get -y install git curl unzip wget

RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

USER gipod

WORKDIR /home/gitpod

RUN git clone https://github.com/flutter/flutter && \
    /home/gitpod/flutter/bin/flutter config --enable-web

ENV PUB_CACHE /home/gitpod/.pub_cache
ENV PATH /home/gitpod/flutter/bin:${PATH}
