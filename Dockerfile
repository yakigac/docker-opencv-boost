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

RUN apt-get -qqy install python3-pip

RUN pip3 --no-cache-dir install \
        ipykernel \
        jupyter \
        matplotlib \
        numpy \
        scipy \
        sklearn \
        pandas \
        Pillow \
        tifffile

COPY jupyter_notebook_config.py /root/.jupyter/

EXPOSE 8888

WORKDIR /workdir

CMD /bin/bash
