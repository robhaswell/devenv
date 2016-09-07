FROM ubuntu:latest
MAINTAINER Rob Haswell <me@robhaswell.co.uk>

RUN apt-get -y update
RUN apt-get -y upgrade

RUN apt-get -y install vim-addon-manager
