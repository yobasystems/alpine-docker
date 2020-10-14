FROM yobasystems/alpine:3.12.0-aarch64

ARG BUILD_DATE
ARG VCS_REF

LABEL maintainer="Dominic Taylor <dominic@yobasystems.co.uk>" \
    architecture="arm64v8/aarch64" \
    alpine-version="3.12.0" \
    docker-version="19.03.12" \
    build="14-Oct-2020" \
    org.opencontainers.image.title="alpine-docker" \
    org.opencontainers.image.description="Docker image running on Alpine Linux" \
    org.opencontainers.image.authors="Dominic Taylor <dominic@yobasystems.co.uk>" \
    org.opencontainers.image.vendor="Yoba Systems" \
    org.opencontainers.image.version="v3.12.0" \
    org.opencontainers.image.url="https://hub.docker.com/r/yobasystems/alpine-docker/" \
    org.opencontainers.image.source="https://github.com/yobasystems/alpine-docker" \
    org.opencontainers.image.revision=$VCS_REF \
    org.opencontainers.image.created=$BUILD_DATE

RUN apk add --no-cache ca-certificates curl openssl git openssh-client docker

COPY files/docker-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["sh"]
