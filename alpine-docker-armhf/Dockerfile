FROM yobasystems/alpine:3.20.2-armhf

ARG BUILD_DATE
ARG VCS_REF

LABEL maintainer="Dominic Taylor <dominic@yoba.systems>" \
    architecture="arm32v7/armhf" \
    alpine-version="3.20.2" \
    docker-version="26.1.5" \
    build="19-Aug-2024" \
    org.opencontainers.image.title="alpine-docker" \
    org.opencontainers.image.description="Container image running on Alpine Linux" \
    org.opencontainers.image.authors="Dominic Taylor <dominic@yoba.systems>" \
    org.opencontainers.image.vendor="Yoba Systems" \
    org.opencontainers.image.version="3.20.2" \
    org.opencontainers.image.url="https://hub.docker.com/r/yobasystems/alpine-docker/" \
    org.opencontainers.image.source="https://github.com/yobasystems/alpine-docker" \
    org.opencontainers.image.base.name="docker.io/yobasystems/alpine:3.20.2" \
    org.opencontainers.image.revision=$VCS_REF \
    org.opencontainers.image.created=$BUILD_DATE

RUN apk add --no-cache ca-certificates curl openssl git openssh-client docker

COPY files/docker-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["sh"]
