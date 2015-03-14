FROM hpess/chef:latest
MAINTAINER Karl Stoney <karl.stoney@hp.com>, Paul Cooke <paul.cooke@hp.com>

RUN yum -y install java-1.7.0-openjdk-headless && \
    yum -y clean all

# Add it to the path
ENV PATH $PATH:/usr/lib/jvm/jre-openjdk/bin
