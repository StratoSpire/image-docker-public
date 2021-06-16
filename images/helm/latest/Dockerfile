ARG UBUNTU_RELEASE_NAME=focal
FROM docker.io/stratospire/buildpack-deps:scm-${UBUNTU_RELEASE_NAME}

ARG HELM_VERSION="3.6.1"
ENV HELM_VERSION=${HELM_VERSION}

RUN export ARCH="$( dpkg --print-architecture )" && \
    curl -L https://get.helm.sh/helm-v${HELM_VERSION}-linux-${ARCH}.tar.gz | tar -xvz && \
    mv linux-${ARCH}/helm /usr/local/bin && \
    rm -rf linux-${ARCH}

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
