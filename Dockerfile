FROM ubuntu:14.04

MAINTAINER Raymond Yee  <raymond.yee@gmail.com>

# http://switch2osm.org/serving-tiles/manually-building-a-tile-server-14-04/


# https://github.com/ipython/ipython/blob/master/Dockerfile
# Not essential, but wise to set the lang
# Note: Users with other languages should set this in their derivative image
RUN apt-get update && apt-get install -y language-pack-en
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN locale-gen en_US.UTF-8
RUN dpkg-reconfigure locales

# Python binary dependencies, developer tools
RUN apt-get update && apt-get install -y -q \
    libboost-all-dev \
    subversion \
    git-core \
    tar \
    unzip \
    wget \
    bzip2 \
    build-essential \
    autoconf \
    libtool \
    libxml2-dev \
    libgeos-dev \
    libgeos++-dev \
    libpq-dev \
    libbz2-dev \
    libproj-dev \
    munin-node \
    munin \
    libprotobuf-c0-dev \
    protobuf-c-compiler \
    libfreetype6-dev \
    libpng12-dev \
    libtiff4-dev \
    libicu-dev \
    libgdal-dev \
    libcairo-dev \
    libcairomm-1.0-dev \
    apache2 apache2-dev \
    libagg-dev \
    liblua5.2-dev \
    ttf-unifont \
    lua5.1 \
    liblua5.1-dev \
    node-carto
