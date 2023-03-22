FROM yobasystems/alpine:3.17.2-amd64

ARG BUILD_DATE
ARG VCS_REF

LABEL maintainer="Dominic Taylor <dominic@yobasystems.co.uk>" \
    architecture="amd64/x86_64" \
    alpine-version="3.17.2" \
    docker-version="20.10.21" \
    build="22-Mar-2023" \
    org.opencontainers.image.title="alpine-docker" \
    org.opencontainers.image.description="Docker image running on Alpine Linux" \
    org.opencontainers.image.authors="Dominic Taylor <dominic@yobasystems.co.uk>" \
    org.opencontainers.image.vendor="Yoba Systems" \
    org.opencontainers.image.version="v3.17.2" \
    org.opencontainers.image.url="https://hub.docker.com/r/yobasystems/alpine-docker/" \
    org.opencontainers.image.source="https://github.com/yobasystems/alpine-docker" \
    org.opencontainers.image.revision=$VCS_REF \
    org.opencontainers.image.created=$BUILD_DATE

RUN apk add --no-cache ca-certificates curl openssl git openssh-client docker

COPY files/docker-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["sh"]
