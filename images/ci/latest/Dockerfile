#syntax=bergkvist/includeimage

FROM docker.io/stratospire/ubuntu:focal
INCLUDE docker.io/stratospire/node:14.17.1-focal
INCLUDE docker.io/stratospire/python:3.9.5-focal
INCLUDE docker.io/stratospire/kubectl:1.21.1-focal
INCLUDE docker.io/stratospire/helm:3.6.1-focal
INCLUDE docker.io/stratospire/terraform:1.0.0-focal

ENV LD_LIBRARY_PATH="/usr/local/lib"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
