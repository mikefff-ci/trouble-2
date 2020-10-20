# syntax = docker/dockerfile:experimental
FROM cimg/base:stable

RUN mkdir -p /home/circleci/test
RUN echo "before"
RUN --mount=type=cache,target=/home/circleci/test,id=custom-pip \
  echo "testing"
RUN echo "after"
