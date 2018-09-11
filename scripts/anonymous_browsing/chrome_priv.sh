#!/bin/bash -x

DIR="${XDG_CACHE_HOME:-$HOME/.cache}"
mkdir -p -- "$DIR"
TEMP="$(mktemp -d -- "$DIR/chromium-XXXXXX")"
trap "rm -rf -- '$TEMP'" INT TERM EXIT
chrome --user-data-dir="$TEMP" \
         --no-default-browser-check \
         --no-first-run \
         "$@" >/dev/null 2>&1
