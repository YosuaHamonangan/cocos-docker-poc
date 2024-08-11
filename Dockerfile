FROM ubuntu:24.04

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

RUN dpkg --add-architecture i386 
RUN mkdir -pm755 /etc/apt/keyrings
RUN wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
RUN wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/noble/winehq-noble.sources
RUN apt update
RUN apt install --assume-yes --install-recommends wine-stable

RUN apt-get install --assume-yes xvfb 

COPY /cocos ./cocos
COPY /project ./project