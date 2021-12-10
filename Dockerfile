FROM ubuntu:20.04

LABEL MAINTAINER "Rafael Pardo R."

RUN yes | unminimize && \
  apt-get -y --no-install-recommends upgrade && \
  apt-get install -y \
    apt-utils \
    build-essentials \
    man-db \
    curl \
    software-properties-common \
    apt-transport-https \ &&
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/log/dmesg.* 
