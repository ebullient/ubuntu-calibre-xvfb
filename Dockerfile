FROM ubuntu:xenial

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
  && apt-get install -y \
    build-essential \
     curl \
     libxcomposite1 \
     python2.7 \
     python-pip \
     python-pyqt5 \
     wget \
     x11-common \
     xvfb \
  && python2 -m pip install --upgrade pip \
  && wget -q https://download.calibre-ebook.com/3.26.0/calibre-3.26.0-x86_64.txz \
  && mkdir /calibre-bin && tar xvf calibre-3.26.0-x86_64.txz -C /calibre-bin \
  && /calibre-bin/calibre_postinstall
