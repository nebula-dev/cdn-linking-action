FROM alpine:latest

LABEL "com.github.actions.name"="DigitalOcean Spaces Sync"
LABEL "com.github.actions.description"="Sync assets to repository-specific directory within space, maintaining local directory structure"

LABEL maintainer="Galileo Daras <galileo@getcoffee.io>"
LABEL version="1.0"
LABEL repository="https://github.com/nebula-dev/cdn-linking-action"
LABEL homepage="https://nebula.dev/"

RUN apk add --no-cache bash gawk sed grep bc coreutils

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
