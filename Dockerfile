FROM hpess/chef:latest
MAINTAINER Paul Cooke <paul.cooke@hp.com>

RUN yum -y install java-1.7.0-openjdk && \
    yum -y clean all

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME $(dirname /usr/lib/jvm/java-*-openjdk-*/jre/bin)
