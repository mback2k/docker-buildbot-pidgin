FROM mback2k/buildbot:latest

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential automake autoconf \
        make libtool-bin pkg-config curl wget \
        binutils-mingw-w64 mingw-w64 mingw-w64-tools \
        libnss3-dev libnspr4-dev zlib1g-dev \
        libxml2-dev && \
    apt-get clean

USER buildbot
