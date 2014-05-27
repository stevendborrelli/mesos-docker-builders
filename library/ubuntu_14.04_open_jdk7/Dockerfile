FROM ubuntu:14.04

MAINTAINER Steven Borrelli <steve@borrelli.org>

ENV DEBIAN_FRONTEND noninteractive

#Mesos Build deps
RUN apt-get -y install python-dev build-essential autoconf automake software-properties-common \
                       git make libssl-dev curl libcurl3 libcurl3-gnutls maven \
                       libcurl4-openssl-dev libsasl2-dev libtool ruby1.9.1 ruby1.9.1-dev && \
                       gem install fpm
#Openjdk
RUN apt-get -y install openjdk-7-jdk

#Mesos deb-packaging 
RUN git clone https://github.com/mesosphere/mesos-deb-packaging

WORKDIR /mesos-deb-packaging 

CMD [ "/mesos-deb-packaging/build_mesos" ] 
