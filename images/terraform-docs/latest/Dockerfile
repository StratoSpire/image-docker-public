ARG UBUNTU_RELEASE_NAME=focal \
    TERRAFORM_VERSION="1.0.0"
FROM docker.io/stratospire/terraform:${TERRAFORM_VERSION}-${UBUNTU_RELEASE_NAME}

ARG TERRAFORM_DOCS_VERSION="0.14.1"
ENV TERRAFORM_DOCS_VERSION=${TERRAFORM_DOCS_VERSION}

RUN export ARCH="$( dpkg --print-architecture )" && \
    curl -L -O https://github.com/terraform-docs/terraform-docs/releases/download/v${TERRAFORM_DOCS_VERSION}/terraform-docs-v${TERRAFORM_DOCS_VERSION}-linux-${ARCH}.tar.gz && \
    tar -xvzf terraform-docs-v${TERRAFORM_DOCS_VERSION}-linux-${ARCH}.tar.gz && \
    mv terraform-docs /usr/local/bin/terraform-docs && \
    rm -rf terraform-docs-v${TERRAFORM_DOCS_VERSION}-linux-${ARCH} && \
    terraform-docs version

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
