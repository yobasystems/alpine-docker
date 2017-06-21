#!/bin/sh
set -e

if [ "${1:0:1}" = '-' ]; then
	set -- docker "$@"
fi

if docker "$1" --help > /dev/null 2>&1; then
	set -- docker "$@"
fi

if [ -z "$DOCKER_HOST" -a "$DOCKER_PORT_2375_TCP" ]; then
	export DOCKER_HOST='tcp://docker:2375'
fi

exec "$@"
