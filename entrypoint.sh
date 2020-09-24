#!/bin/sh
set -e

echo $(pwd)

find . -not -path '*/\.*' -not -path './static/*' -name '*.html' -exec \
sed --debug -i -e "s%\(href\|src\|content\)\( *= *\)\"$TARGET_SRC\(.*\)\"%\1\2\"$CDN_BASE_URL$CDN_PATH\3\"%g" {} +

echo "Persistance test" >> ./index.html