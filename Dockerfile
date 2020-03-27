FROM ubuntu:16.04

RUN apt-get update -y && apt-get install -y dnsutils

RUN mkdir -p /tmp/test

CMD ["cat", "/tmp/test/test.txt"]
