FROM yobasystems/alpine:x86
LABEL maintainer "Dominic Taylor <dominic@yobasystems.co.uk>" architecture="i886/x86" alpineversion="3.7.0" build="21122017"

RUN apk add --no-cache ca-certificates curl openssl git openssh-client docker

COPY files/docker-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["sh"]
