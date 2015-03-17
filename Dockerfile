FROM hpess/chef:master
MAINTAINER Karl Stoney <karl.stoney@hp.com>, Paul Cooke <paul.cooke@hp.com>

RUN yum -y -q install java-1.7.0-openjdk-headless && \
    yum -y -q clean all

# Add Drip for faster JVM startups, do this all in one layer to save space
RUN yum -y -q install make gcc java-devel && \
    cd /usr/local/src && \
    wget --quiet https://github.com/ninjudd/drip/archive/0.2.4.tar.gz && \
    tar -xzf 0.2.4.tar.gz && \
    rm -f /usr/local/src/*.tar.gz && \
    cd drip-* && \
    make prefix=/bin install && \
    yum -y -q autoremove make gcc java-devel && \
    yum -y -q clean all
    
ENV HPESS_ENV jre

# Add it to the path
ENV PATH $PATH:/usr/lib/jvm/jre-openjdk/bin
