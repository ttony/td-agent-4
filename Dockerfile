FROM registry.access.redhat.com/ubi8/s2i-base

COPY install.sh install.sh

RUN sh install.sh
