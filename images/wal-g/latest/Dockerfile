ARG UBUNTU_RELEASE_NAME=focal
FROM docker.io/stratospire/buildpack-deps:scm-${UBUNTU_RELEASE_NAME}

ARG WAL_G_VERSION="1.0" \
    WAL_G_DATABASE="pg" \
    UBUNTU_RELEASE_NUM="20.04"

ENV WAL_G_VERSION=${WAL_G_VERSION} \
    WAL_G_DATABASE=${WAL_G_DATABASE} \
    UBUNTU_RELEASE_NUM=${UBUNTU_RELEASE_NUM}

RUN export ARCH="$( dpkg --print-architecture )" && \
    curl \
        -L https://github.com/wal-g/wal-g/releases/download/v${WAL_G_VERSION}/wal-g-${WAL_G_DATABASE}-ubuntu-${UBUNTU_RELEASE_NUM}-${ARCH} \
        -o /usr/local/bin/wal-g \
    && \
    chmod +x /usr/local/bin/wal-g && \
    wal-g --version

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
