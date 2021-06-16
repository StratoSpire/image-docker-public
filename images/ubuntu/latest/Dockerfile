ARG UBUNTU_RELEASE_NAME=focal
FROM docker.io/lsiobase/ubuntu:${UBUNTU_RELEASE_NAME}

COPY uidgidwrap /usr/local/bin/uidgidwrap

ENTRYPOINT [ "uidgidwrap" ]
CMD [ "/bin/bash" ]
