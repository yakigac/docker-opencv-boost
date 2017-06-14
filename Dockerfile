FROM ubuntu:14.04
LABEL MAINTAINER ryohei.kuroki@gmail.com

RUN apt-get -qq update && apt-get -qqy upgrade \
&& apt-get -qqy install software-properties-common \
&& apt-add-repository -y "ppa:ubuntu-toolchain-r/test"

RUN apt-get -qq update && apt-get -qqy install \
    git \
    g++-5 \
    cmake \
    libopencv-dev \
    libboost-system1.55-dev \
    libboost-filesystem1.55-dev \
    libboost-program-options1.55-dev

ENV CXX g++-5

WORKDIR /workdir

CMD /bin/bash
