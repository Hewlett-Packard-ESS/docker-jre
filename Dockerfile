FROM hpess/chef:master
MAINTAINER Karl Stoney <karl.stoney@hp.com>, Paul Cooke <paul.cooke@hp.com>

RUN yum -y -q install java-1.7.0-openjdk-headless && \
    yum -y -q clean all

ENV HPESS_ENV jre

# Add it to the path
ENV PATH $PATH:/usr/lib/jvm/jre-openjdk/bin
