# syntax = docker/dockerfile:experimental
FROM cimg/base:stable

RUN echo "123"
RUN mkdir /home/circleci/test
RUN --mount=type=cache,target=/home/circleci/test \
  echo "testing" > /home/circleci/test
RUN echo "432"
