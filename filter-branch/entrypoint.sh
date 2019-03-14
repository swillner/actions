#!/usr/bin/env sh
[ "$(git rev-parse --abbrev-ref HEAD)" = "$1" ] || exit 78
