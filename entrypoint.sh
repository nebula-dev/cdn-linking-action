#!/bin/sh
set -e

find . -not -path '*/\.*' -not -path './static/*' -name '*.html' -exec \
sed -i -e "s%\(href\|src\)\( *= *\)\"$TARGET_SRC\(.*\)\"%\1\2\"$CDN_BASE_URL$CDN_PATH\3?v=$GITHUB_SHA\"%g" {} +