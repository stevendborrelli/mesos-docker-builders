FROM ubuntu:14.04

MAINTAINER Steven Borrelli <steve@borrelli.org>

ENV DEBIAN_FRONTEND noninteractive

#Mesos Build deps
RUN apt-get -y install python-dev build-essential autoconf automake software-properties-common \
                       git make libssl-dev curl libcurl3 libcurl3-gnutls maven \
                       libcurl4-openssl-dev libsasl2-dev libtool ruby1.9.1 ruby1.9.1-dev && \
                       gem install fpm

#Oracle Java
RUN \
 echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java7-installer && \
  update-alternatives --set java /usr/lib/jvm/java-7-oracle/jre/bin/java

#Mesos deb-packaging 
RUN git clone https://github.com/mesosphere/mesos-deb-packaging

WORKDIR /mesos-deb-packaging 

CMD [ "/mesos-deb-packaging/build_mesos" ] 
