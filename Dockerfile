# syntax = docker/dockerfile:experimental
FROM cimg/base:stable

RUN echo "before"
RUN --mount=type=cache,target=/home/circleci/test,id=customp-ip \
  echo "testing"
RUN echo "after"
