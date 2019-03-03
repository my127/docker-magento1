#!/bin/bash
set -e

function build() {

    local PHP_VERSION="$1"
    local OS="$2"
    local EXECUTOR="fpm"

    set -x
    docker build --no-cache --pull -t my127/magento1:${PHP_VERSION}-${EXECUTOR}-${OS}  ./${PHP_VERSION}/${OS}/${EXECUTOR}
    set +x
}

if [ "$#" -eq 0 ]; then

    build "5.6" "alpine"
    build "7.1" "alpine"
    build "7.2" "alpine"

    build "5.6" "stretch"
    build "7.1" "stretch"
    build "7.2" "stretch"

else

    build $1 $2
    
fi
