FROM cimg/base:stable

USER root
RUN sudo bash -c 'fallocate -l 1G /test.img'
