#!/bin/sh

# Bash "strict mode", to help catch problems and bugs in the shell
# script. Every bash script you write should include this. See
# http://redsymbol.net/articles/unofficial-bash-strict-mode/ for
# details.
set -euo pipefail

# Tell apt-get we're never going to be able to give manual
# feedback:
export DEBIAN_FRONTEND=noninteractive

# Update the package listing, so we know what package exist:
apk update

# Install a new package, without unnecessary recommended packages:
apk --no-cache --upgrade add \
    util-linux \
    autoconf \
    make \
    libtool \
    automake \
    jpeg \
    gcc \
    musl-dev \
    autoconf \
    nasm \
    tiff \
    zlib \
    zlib-dev \
    file \
    pkgconf