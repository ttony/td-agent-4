FROM registry.access.redhat.com/ubi8/ubi-minimal

COPY install.sh install.sh

RUN sh install.sh
