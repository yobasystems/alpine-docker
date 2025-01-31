FROM yobasystems/alpine-docker:amd64

ARG BUILD_DATE
ARG VCS_REF

LABEL maintainer="Dominic Taylor <dominic@yoba.systems>" \
    architecture="amd64/x86_64" \
    alpine-version="3.21.2" \
    docker-version="27.3.1" \
    build="31-Jan-2025" \
    org.opencontainers.image.title="alpine-docker" \
    org.opencontainers.image.description="Container image running on Alpine Linux" \
    org.opencontainers.image.authors="Dominic Taylor <dominic@yoba.systems>" \
    org.opencontainers.image.vendor="Yoba Systems" \
    org.opencontainers.image.version="3.21.2" \
    org.opencontainers.image.url="https://hub.docker.com/r/yobasystems/alpine-docker/" \
    org.opencontainers.image.source="https://github.com/yobasystems/alpine-docker" \
    org.opencontainers.image.base.name="docker.io/yobasystems/alpine-docker:amd64" \
    org.opencontainers.image.revision=$VCS_REF \
    org.opencontainers.image.created=$BUILD_DATE

RUN apk add --no-cache btrfs-progs e2fsprogs e2fsprogs-extra iptables xfsprogs xz

RUN set -x \
	&& addgroup -S dockremap \
	&& adduser -S -G dockremap dockremap \
	&& echo 'dockremap:165536:65536' >> /etc/subuid \
	&& echo 'dockremap:165536:65536' >> /etc/subgid

ENV DIND_COMMIT 3b5fac462d21ca164b3778647420016315289034

RUN wget "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind" -O /usr/local/bin/dind \
	&& chmod +x /usr/local/bin/dind

COPY files/dockerd-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/dockerd-entrypoint.sh

VOLUME /var/lib/docker
EXPOSE 2375

ENTRYPOINT ["/usr/local/bin/dockerd-entrypoint.sh"]
CMD []
