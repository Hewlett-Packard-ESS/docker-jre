FROM hpess/chef:latest
MAINTAINER Paul Cooke <paul.cooke@hp.com>

RUN yum -y install java-1.7.0-openjdk && \
    yum -y clean all

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.71-2.5.3.1.el7_0.x86_64/jre
