#!/usr/bin/env sh
printf "Current branch: "
git rev-parse --abbrev-ref HEAD
echo "Filter branch: $1"
[ "$(git rev-parse --abbrev-ref HEAD)" = "$1" ] || exit 78
