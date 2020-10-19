FROM cimg/base:stable

RUN DOCKER_HOST=$docker_host docker info
