#syntax=bergkvist/includeimage

FROM docker.io/stratospire/ubuntu:focal
INCLUDE docker.io/stratospire/node:14.17.1-focal
INCLUDE docker.io/stratospire/golang:1.16.5-focal
INCLUDE docker.io/stratospire/elixir:1.12.1-focal
INCLUDE docker.io/stratospire/python:3.9.5-focal
INCLUDE docker.io/stratospire/aws-cli:2.0.30-focal
INCLUDE docker.io/stratospire/kubectl:1.21.1-focal
INCLUDE docker.io/stratospire/helm:3.6.1-focal
INCLUDE docker.io/stratospire/terraform:1.0.0-focal
INCLUDE docker.io/stratospire/terraform-docs:0.14.1-focal

ENV LD_LIBRARY_PATH="/usr/local/lib"

RUN node --version && \
    go version && \
    iex --version && \
    python --version && \
    aws --version && \
    which kubectl && \
        /bin/bash -c "kubectl version || true" && \
    helm version && \
    terraform version && \
    terraform-docs version

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
