FROM ubuntu:16.04

RUN apt-get update -y && apt-get install -y dnsutils

CMD ["dig", "+trace", "example.com"]
