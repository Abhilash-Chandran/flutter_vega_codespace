FROM debian:stretch
RUN dpkg --configure -a
RUN apt-get update && apt-get -y install git curl unzip wget

RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

# optional
# Install Chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install
# RUN sudo apt-get -y install ./google-chrome-stable_current_amd64.deb

RUN mkdir /home/vscodespace
WORKDIR /home/vscodespace

ENV PUB_CACHE=/home/vscodespace/.pub_cache
ENV PATH="/home/vscodespace/flutter/bin:$PATH"

RUN git clone https://github.com/flutter/flutter && \
    /home/vscodespace/flutter/bin/flutter config --enable-web

