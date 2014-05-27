#Mesos Docker Builders

## Oveview
This repo contains Dockerfiles that can be used to build [Apache Mesos](http://mesos.apache.org) 

The dockerfile will create .deb packages using [mesos-deb-packaging](https://github.com/mesosphere/mesos-deb-packaging.git). 


##Dockerfiles
Dockerfiles are located in the library
* Ubuntu 14.04/Oracle JDK 7
* Ubuntu 14.04/OpenJDK 7

##Building the dockerfiles

    ./build.sh

##Building mesos using a container

    docker run ubuntu_14.04_open_jdk7 

#To use a directory on the host that hold mesos source code
This will prevent the container from cloning the mesos source code.

    docker run -v /src/mesos:/mesos-deb-packaging/mesos-repo <container>
