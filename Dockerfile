FROM cimg/base:stable

ARG docker_host

RUN docker --tls --host=$docker_host info
