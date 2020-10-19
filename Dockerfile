FROM cimg/base:stable

ARG docker_host

RUN docker --host=$docker_host info
