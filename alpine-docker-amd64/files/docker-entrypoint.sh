#!/bin/sh
set -e

if [ "${1#-}" != "$1" ]; then
	set -- docker "$@"
fi

if docker help "$1" > /dev/null 2>&1; then
	set -- docker "$@"
fi

if [ -z "$DOCKER_HOST" -a "$DOCKER_PORT_2375_TCP" ]; then
	export DOCKER_HOST='tcp://docker:2375'
fi

exec "$@"
