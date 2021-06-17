ARG UBUNTU_RELEASE_NAME="focal" \
	OTP_VERSION="24.0.2"
FROM docker.io/stratospire/erlang:${OTP_VERSION}-${UBUNTU_RELEASE_NAME}

ARG ELIXIR_VERSION="v1.12.1"
ENV ELIXIR_VERSION=${ELIXIR_VERSION}

# elixir expects utf8.
ENV LANG=C.UTF-8

RUN set -xe \
	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/archive/${ELIXIR_VERSION}.tar.gz" \
	&& curl -fSL -o elixir-src.tar.gz $ELIXIR_DOWNLOAD_URL \
	&& mkdir -p /usr/local/src/elixir \
	&& tar -xzC /usr/local/src/elixir --strip-components=1 -f elixir-src.tar.gz \
	&& rm elixir-src.tar.gz \
	&& cd /usr/local/src/elixir \
	&& make install clean

CMD ["iex"]

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
