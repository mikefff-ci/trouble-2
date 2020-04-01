FROM ubuntu:16.04

RUN apt-get update -y && apt-get install -y dnsutils

RUN mkdir -p /tmp/test

RUN mkdir /does/not/exist

CMD ["cat", "/tmp/test/test.txt"]
