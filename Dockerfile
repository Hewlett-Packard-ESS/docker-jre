FROM hpess/chef:latest
MAINTAINER Paul Cooke <paul.cooke@hp.com>

RUN yum -y install java-1.7.0-openjdk && \
    yum -y clean all

# Add it to the path
ENV PATH $PATH:/usr/lib/jvm/jre-openjdk/bin
