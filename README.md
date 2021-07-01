# Alpine with Docker

[![Docker Automated build](https://img.shields.io/docker/automated/yobasystems/alpine-docker.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/yobasystems/alpine-docker/)
[![Docker Pulls](https://img.shields.io/docker/pulls/yobasystems/alpine-docker.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/yobasystems/alpine-docker/)
[![Docker Stars](https://img.shields.io/docker/stars/yobasystems/alpine-docker.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/yobasystems/alpine-docker/)

[![Alpine Version](https://img.shields.io/badge/Alpine%20version-v3.14.0-green.svg?style=for-the-badge&logo=alpine-linux)](https://alpinelinux.org/)
[![Docker Version](https://img.shields.io/badge/Docker%20version-v20.10.7-green.svg?style=for-the-badge&logo=docker)](https://www.docker.com/)


This Docker image [(yobasystems/alpine-docker)](https://hub.docker.com/r/yobasystems/alpine-docker/) is based on the minimal [Alpine Linux](https://alpinelinux.org/) with [Docker](https://www.docker.com/) pre-installed, or even better Docker-in-Docker (dind).

### Alpine Version 3.14.0 (Released 2021-06-15)
##### Docker Version 20.10.7

----

## What is Alpine Linux?
Alpine Linux is a Linux distribution built around musl libc and BusyBox. The image is only 5 MB in size and has access to a package repository that is much more complete than other BusyBox based images. This makes Alpine Linux a great image base for utilities and even production applications. Read more about Alpine Linux here and you can see how their mantra fits in right at home with Docker images.

## What is Docker in Docker?
Although running Docker inside Docker is generally not recommended, there are some legitimate use cases, such as development of Docker itself.

Docker is an open-source project that automates the deployment of applications inside software containers, by providing an additional layer of abstraction and automation of operating-system-level virtualisation on Linux, Mac OS and Windows.


## Features

* Minimal size only
* 40 MB and only 4 layers
* Memory usage is minimal on a simple install

## Architectures

* ```:amd64```, ```:x86_64``` - 64 bit Intel/AMD (x86_64/amd64)
* ```:arm64v8```, ```:aarch64``` - 64 bit ARM (ARMv8/aarch64)
* ```:arm32v7```, ```:armhf``` - 32 bit ARM (ARMv7/armhf)

#### PLEASE CHECK TAGS BELOW FOR SUPPORTED ARCHITECTURES, THE ABOVE IS A LIST OF EXPLANATION

## Tags

* ```:latest``` latest branch based (Automatic Architecture Selection)
* ```:master``` master branch usually inline with latest
* ```:dind``` latest branch with docker-in-docker
* ```:amd64```, ```:x86_64``` amd64 based on latest tag but amd64 architecture
* ```:dind-amd64```, ```:dind-x86_64``` amd64 based on latest tag but amd64 architecture and includes docker-in-docker
* ```:armhf```, ```:arm32v7``` Armv7 based on latest tag but arm architecture
* ```:dind-armhf```, ```:dind-arm32v7``` Armv7 based on latest tag but arm architecture and includes docker-in-docker
* ```:aarch64```, ```:arm64v8``` Armv8 based on latest tag but arm64 architecture
* ```:dind-aarch64```, ```:dind-arm64v8``` Armv8 based on latest tag but arm64 architecture and includes docker-in-docker

## Layers & Sizes

![Version](https://img.shields.io/badge/version-amd64-blue.svg?style=for-the-badge)
![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/yobasystems/alpine-docker/amd64.svg?style=for-the-badge)
![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/yobasystems/alpine-docker/amd64.svg?style=for-the-badge)

![Version](https://img.shields.io/badge/version-aarch64-blue.svg?style=for-the-badge)
![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/yobasystems/alpine-docker/aarch64.svg?style=for-the-badge)
![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/yobasystems/alpine-docker/aarch64.svg?style=for-the-badge)

![Version](https://img.shields.io/badge/version-armhf-blue.svg?style=for-the-badge)
![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/yobasystems/alpine-docker/armhf.svg?style=for-the-badge)
![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/yobasystems/alpine-docker/armhf.svg?style=for-the-badge)

## How to use this image
#### Usage

Use like you would any other base image:

```
FROM yobasystems/alpine-docker
RUN apk add --no-cache ......
.........
.......
....
..
.
```

or maybe a docker run command:


```
docker run -it --name=dind --privileged -v /var/run/docker.sock:/var/run/docker.sock yobasystems/alpine-docker:dind /bin/sh
```

## Image contents & Vulnerability analysis

| PACKAGE NAME          | PACKAGE VERSION | VULNERABILITIES |
|-----------------------|-----------------|-----------------|


## Source Repositories

* [Github - yobasystems/alpine-docker](https://github.com/yobasystems/alpine-docker)

* [Gitlab - yobasystems/alpine-docker](https://gitlab.com/yobasystems/alpine-docker)

* [Bitbucket - yobasystems/alpine-docker](https://bitbucket.org/yobasystems/alpine-docker/)


## Container Registries

* [Dockerhub - yobasystems/alpine-docker](https://hub.docker.com/r/yobasystems/alpine-docker/)

* [Quay.io - yobasystems/alpine-docker](https://quay.io/repository/yobasystems/alpine-docker)


## Links

* [Yoba Systems](https://www.yobasystems.co.uk/)

* [Github - Yoba Systems](https://github.com/yobasystems/)

* [Dockerhub - Yoba Systems](https://hub.docker.com/u/yobasystems/)

* [Quay.io - Yoba Systems](https://quay.io/organization/yobasystems)

* [Maintainer - Dominic Taylor](https://github.com/dominictayloruk)

## Donation

[![BMAC](https://img.shields.io/badge/BUY%20ME%20A%20COFFEE-£5-blue.svg?style=for-the-badge&logo=buy-me-a-coffee)](https://www.buymeacoffee.com/dominictayloruk?new=1)

[![BITCOIN](https://img.shields.io/badge/BTC-bc1ql0heex0jxh0yj5cucc83a3x6c6rxuq6x9zk07g-blue.svg?style=for-the-badge&logo=bitcoin)](bitcoin:bc1ql0heex0jxh0yj5cucc83a3x6c6rxuq6x9zk07g)

[![ETHEREUM](https://img.shields.io/badge/ETH-0x6b707391c60d50E4E414a143446C0b8eF9A2d1c4-blue.svg?style=for-the-badge&logo=ethereum)](https://etherscan.io/address/dominictaylor.eth)

[![STELLAR](https://img.shields.io/badge/XLM-GAREZZW36KF2IT2EJW6LG5HH4XT3QIMWCHMCGEBC6V3AP3EFJCORRZIY-blue.svg?style=for-the-badge&logo=stellar)](https://keybase.io/dominictayloruk)
