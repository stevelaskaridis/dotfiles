#!/bin/bash -x

DIR="${XDG_CACHE_HOME:-$HOME/.cache}"
mkdir -p -- "$DIR"
TEMP="$(mktemp -d -- "$DIR/firefox-XXXXXX")"
trap "rm -rf -- '$TEMP'" INT TERM EXIT
firefox -profile "$TEMP" -no-remote "$@"
