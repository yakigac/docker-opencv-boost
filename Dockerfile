FROM ubuntu:16.04
LABEL MAINTAINER ryohei.kuroki@gmail.com

RUN apt-get -qq update
RUN apt-get -qqy install \
    build-essential \
    cmake \
    python3 \
    python3-dev \
    libopencv-dev \
    libboost-all-dev

WORKDIR /workdir

CMD /bin/bash
