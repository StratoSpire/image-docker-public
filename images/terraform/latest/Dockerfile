ARG UBUNTU_RELEASE_NAME=focal
FROM docker.io/stratospire/buildpack-deps:scm-${UBUNTU_RELEASE_NAME}

ARG TERRAFORM_VERSION="1.0.0"
ENV TERRAFORM_VERSION=${TERRAFORM_VERSION}

RUN export ARCH="$( dpkg --print-architecture )" && \
    curl -L https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_${ARCH}.zip -o terraform.zip && \
    unzip terraform.zip && \
    rm terraform.zip && \
    mv terraform /usr/local/bin

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
