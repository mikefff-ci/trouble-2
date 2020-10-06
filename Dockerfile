FROM curlimages/curl:7.65.3

USER root
RUN mkdir -p /downloads
RUN touch /download/test
