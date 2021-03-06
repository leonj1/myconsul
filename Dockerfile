FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y vim curl lsof telnet

ADD config /config
ADD consul /bin/consul

ENTRYPOINT ["/bin/consul"]

