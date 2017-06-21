# Alpine with Docker

[![Docker Layers](https://img.shields.io/badge/docker%20layers-4-blue.svg?maxAge=2592000?style=flat-square)](https://hub.docker.com/r/yobasystems/alpine-docker/) [![Docker Size](https://img.shields.io/badge/docker%20size-40%20MB-blue.svg?maxAge=2592000?style=flat-square)](https://hub.docker.com/r/yobasystems/alpine-docker/) [![Docker Stars](https://img.shields.io/docker/stars/yobasystems/alpine-docker.svg?maxAge=2592000?style=flat-square)](https://hub.docker.com/r/yobasystems/alpine-docker/) [![Docker Pulls](https://img.shields.io/docker/pulls/yobasystems/alpine-docker.svg?maxAge=2592000?style=flat-square)](https://hub.docker.com/r/yobasystems/alpine-docker/)

[![Alpine Version](https://img.shields.io/badge/alpine%20version-v3.6.2-green.svg?maxAge=2592000?style=flat-square)](http://alpinelinux.org/) [![Nginx Version](https://img.shields.io/badge/docker%20version-v17.05.0-green.svg?maxAge=2592000?style=flat-square)](http://nginx.org/en/)



This Docker image [(yobasystems/alpine-docker)](https://hub.docker.com/r/yobasystems/alpine-docker/) is based on the minimal [Alpine Linux](http://alpinelinux.org/) with [Docker](https://www.docker.com/) pre-installed, or even better Docker-in-Docker (dind).

##### Alpine Version 3.6.2 (Released Jun 17, 2017)
##### Docker Version 17.05.0

----

## What is Alpine Linux?
Alpine Linux is a Linux distribution built around musl libc and BusyBox. The image is only 5 MB in size and has access to a package repository that is much more complete than other BusyBox based images. This makes Alpine Linux a great image base for utilities and even production applications. Read more about Alpine Linux here and you can see how their mantra fits in right at home with Docker images.

## What is Docker in Docker?
Although running Docker inside Docker is generally not recommended, there are some legitimate use cases, such as development of Docker itself.

Docker is an open-source project that automates the deployment of applications inside software containers, by providing an additional layer of abstraction and automation of operating-system-level virtualization on Linux, Mac OS and Windows.


## Features

  * Minimal size only
    * 40 MB and only 4 layers
  * Memory usage is minimal on a simple install

## Architectures

  * ```:amd64```, ```:latest``` - 64 bit Intel/AMD (x86_64/amd64)
  * ```:i386```, ```:x86``` - 32 bit Intel/AMD (x86/i686)
  * ```:arm64v8```, ```:aarch64``` - 64 bit ARM (ARMv8/aarch64)
  * ```:arm32v7```, ```:armhf``` - 32 bit ARM (ARMv7/armhf)

#### PLEASE CHECK TAGS BELOW FOR SUPPORTED ARCHITECTURES, THE ABOVE IS A LIST OF EXPLANATION

## Tags

  * ```:latest```, ```:amd64``` latest branch based on amd64
  * ```:master``` master branch usually inline with latest
  * ```:dind``` latest branch with docker-in-docker
  * ```:v0.0.0``` version number related to docker version
  * ```:armhf```, ```:arm32v7``` Armv7 based on latest tag but arm architecture
  * ```:armhf-dind```, ```:arm32v7-dind``` Armv7 based on latest tag but arm architecture and includes docker-in-docker

## How to use this image
#### Usage

Use like you would any other base image:

```
FROM yobasystems/alpine-docker:amd64
RUN apk add --no-cache ......
.........
.......
....
..
.
```

or maybe a docker run command:


```
docker run -it --name=dind --privileged -v /var/run/docker.sock:/var/run/docker.sock yobasystems/alpine-docker:amd64-dind /bin/sh
```

## Image contents & Vulnerability analysis

| PACKAGE NAME          | PACKAGE VERSION | VULNERABILITIES |
|-----------------------|-----------------|-----------------|
| apk-tools             | 2.7.1-r1        | None Detected   |
| busybox               | 1.26.2-r5       | None Detected   |
| expat                 | 2.2.0-r0        | None Detected   |
| curl                  | 7.54.0-r0       | None Detected   |
| docker                | 17.05.0-r0      | None Detected   |
| musl                  | 1.1.16-r9       | None Detected   |
| libssl1.0             | 1.0.2k-r0       | None Detected   |
| openssh-client        | 7.5_p1-r1       | None Detected   |
| libseccomp            | 2.3.2-r0        | None Detected   |
| ca-certificates       | 20161130-r2     | None Detected   |
| alpine-keys           | 2.1-r1          | None Detected   |
| alpine-baselayout     | 3.0.4-r0        | None Detected   |
| libressl2.5-libssl    | 2.5.4-r0        | None Detected   |
| libcrypto1.0          | 1.0.2k-r0       | None Detected   |
| pcre                  | 8.40-r2         | None Detected   |
| libnftnl-libs         | 1.0.7-r0        | None Detected   |
| libmnl                | 1.0.4-r0        | None Detected   |
| openssl               | 1.0.2k-r0       | None Detected   |
| git                   | 2.13.0-r0       | None Detected   |
| libssh2               | 1.8.0-r1        | None Detected   |
| libcurl               | 7.54.0-r0       | None Detected   |
| iptables              | 1.6.1-r0        | None Detected   |
| libressl2.5-libcrypto | 2.5.4-r0        | None Detected   |
| libc-utils            | 0.7.1-r0        | None Detected   |
| musl-utils            | 1.1.16-r9       | None Detected   |
| zlib                  | 1.2.11-r0       | None Detected   |
| device-mapper-libs    | 2.02.168-r3     | None Detected   |
| scanelf               | 1.2.2-r0        | None Detected   |
| openssh-keygen        | 7.5_p1-r1       | None Detected   |


## Source Repository

* [Bitbucket - yobasystems/alpine-docker](https://bitbucket.org/yobasystems/alpine-docker/)

* [Github - yobasystems/alpine-docker](https://github.com/yobasystems/alpine-docker)

## Links

* [Yoba Systems](https://www.yobasystems.co.uk/)

* [Dockerhub - yobasystems](https://hub.docker.com/u/yobasystems/)

* [Quay.io - yobasystems](https://quay.io/organization/yobasystems)
