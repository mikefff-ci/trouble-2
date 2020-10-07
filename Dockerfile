FROM cimg/base:stable

USER root
RUN mkdir -p /downloads
RUN dd if=/dev/zero of=test.img bs=1024 count=0 seek=2G
RUN touch /downloads/two
RUN touch /downloads/test
