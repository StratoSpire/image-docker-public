ARG UBUNTU_RELEASE_NAME="focal"
FROM docker.io/stratospire/ubuntu:${UBUNTU_RELEASE_NAME}

RUN apt-get update && \
    apt-get install -y \
        ca-certificates \
        curl \
    && \
    rm -rf \
        /var/lib/apt/lists/* \
    	/tmp/* \
	    /var/tmp/*

ARG WAL_G_VERSION="1.0" \
    WAL_G_DATABASE="pg" \
    UBUNTU_RELEASE_NUM="20.04"

ENV WAL_G_VERSION=${WAL_G_VERSION} \
    WAL_G_DATABASE=${WAL_G_DATABASE} \
    UBUNTU_RELEASE_NUM=${UBUNTU_RELEASE_NUM}

RUN curl \
        -L https://github.com/wal-g/wal-g/releases/download/v${WAL_G_VERSION}/wal-g-${WAL_G_DATABASE}-ubuntu-${UBUNTU_RELEASE_NUM}-amd64 \
        -o /usr/local/bin/wal-g \
    && \
    chmod +x /usr/local/bin/wal-g && \
    wal-g --version

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
