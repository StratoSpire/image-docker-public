ARG UBUNTU_RELEASE_NAME=focal
FROM docker.io/stratospire/buildpack-deps:scm-${UBUNTU_RELEASE_NAME}

ARG K8S_VERSION="1.21.1"
ENV K8S_VERSION=${K8S_VERSION}

RUN export ARCH="$( dpkg --print-architecture )" && \
    curl -L https://storage.googleapis.com/kubernetes-release/release/v${K8S_VERSION}/bin/linux/${ARCH}/kubectl -o /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
