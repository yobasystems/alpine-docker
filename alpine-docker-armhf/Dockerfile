FROM yobasystems/alpine:3.8.1-armhf
LABEL maintainer "Dominic Taylor <dominic@yobasystems.co.uk>" architecture="ARM32v7/armhf"  alpineversion="3.8.1" build="20-sep-2018"

RUN apk add --no-cache ca-certificates curl openssl git openssh-client docker

COPY files/docker-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["sh"]
