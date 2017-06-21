# Alpine with Docker

[![Docker Layers](https://img.shields.io/badge/docker%20layers-5-blue.svg?maxAge=2592000?style=flat-square)](https://hub.docker.com/r/yobasystems/alpine-docker/) [![Docker Size](https://img.shields.io/badge/docker%20size-6.6%20MB-blue.svg?maxAge=2592000?style=flat-square)](https://hub.docker.com/r/yobasystems/alpine-docker/) [![Docker Stars](https://img.shields.io/docker/stars/yobasystems/alpine-docker.svg?maxAge=2592000?style=flat-square)](https://hub.docker.com/r/yobasystems/alpine-docker/) [![Docker Pulls](https://img.shields.io/docker/pulls/yobasystems/alpine-docker.svg?maxAge=2592000?style=flat-square)](https://hub.docker.com/r/yobasystems/alpine-docker/)

[![Alpine Version](https://img.shields.io/badge/alpine%20version-v3.6.2-green.svg?maxAge=2592000?style=flat-square)](http://alpinelinux.org/) [![Nginx Version](https://img.shields.io/badge/docker%20version-v17.05.0-green.svg?maxAge=2592000?style=flat-square)](http://nginx.org/en/)



This Docker image [(yobasystems/alpine-docker)](https://hub.docker.com/r/yobasystems/alpine-docker/) is based on the minimal [Alpine Linux](http://alpinelinux.org/) with version 17.05.0 of [Docker](https://www.docker.com/)

Alpine Linux with Docker preinstalled, or even better Docker-in-Docker (dind).

### Current Alpine Version 3.6.2 (Released Jun 17, 2017)
----

## What is Alpine Linux?
Alpine Linux is a Linux distribution built around musl libc and BusyBox. The image is only 5 MB in size and has access to a package repository that is much more complete than other BusyBox based images. This makes Alpine Linux a great image base for utilities and even production applications. Read more about Alpine Linux here and you can see how their mantra fits in right at home with Docker images.

## What is Docker in Docker?
Although running Docker inside Docker is generally not recommended, there are some legitimate use cases, such as development of Docker itself.

Docker is an open-source project that automates the deployment of applications inside software containers, by providing an additional layer of abstraction and automation of operating-system-level virtualization on Linux, Mac OS and Windows.


## Features

  * Minimal size only
    * ? MB and only 5 layers
  * Memory usage is minimal on a simple install

## Archetectures

```:amd64```, ```:latest``` - 64 bit Intel/AMD (x86_64/amd64)

```:i386```, ```:x86``` - 32 bit Intel/AMD (x86/i686)

```:arm64v8```, ```:aarch64``` - 64 bit ARM (ARMv8/aarch64)

```:arm32v7```, ```:armhf``` - 32 bit ARM (ARMv7/armhf)


## Tags

  * ```:latest``` latest
  * ```:master``` master branch usually inline with latest
  * ```:dind``` latest branch with docker-in-docker
  * ```:v0.0.0``` version number related to docker version
  * ```:armhf``` Armv7 based on latest tag but arm architecture
  * ```:armhf-dind``` Armv7 based on latest tag but arm architecture and includes Git

## How to use this image
#### Usage
Use like you would any other base image:

```
FROM yobasystems/alpine-docker:amd64
RUN apk add --no-cache mysql-client
ENTRYPOINT ["mysql"]
```
