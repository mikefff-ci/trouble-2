FROM python:3.7.9-slim

RUN apt-get update && apt-get --assume-yes install libgeos-dev git gcc

ARG CACHE_DATE=2017-01-01
ARG GIT_USER
ARG GIT_PASSWORD
ARG BUILD_NUMBER=

ADD requirements.txt /

RUN pip install -r /requirements.txt
