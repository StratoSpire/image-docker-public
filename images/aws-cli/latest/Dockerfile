ARG UBUNTU_RELEASE_NAME=focal
FROM docker.io/stratospire/buildpack-deps:${UBUNTU_RELEASE_NAME}

ARG AWS_CLI_VERSION="2.0.30"
ENV AWS_CLI_VERSION=${AWS_CLI_VERSION}

RUN export ARCH="$( uname -m )" && \
    curl -L https://awscli.amazonaws.com/awscli-exe-linux-x86_64-${AWS_CLI_VERSION}.zip -o awscliv2.zip && \
    unzip awscliv2.zip && \
    rm awscliv2.zip && \
    ./aws/install && \
    rm -rf ./aws && \
    aws --version

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
