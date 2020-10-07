FROM cimg/base:stable

USER root
RUN mkdir -p /downloads
RUN touch /downloads/two
RUN touch /downloads/test
