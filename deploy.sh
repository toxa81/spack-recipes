#!/bin/bash

#git clone --depth 1 https://github.com/spack/spack.git

WORKDIR=$(pwd)

source $WORKDIR/spack/share/spack/setup-env.sh

mkdir -p $WORKDIR/{install,config}

export SPACK_USER_CONFIG_PATH=$WORKDIR/config

spack config add config:install_tree:root:$WORKDIR/install
spack config add packages:all:variants:cuda_arch=80

spack external find --not-buildable git perl cpio m4 autoconf automake pkgconf curl sqlite tar xz zip bzip2
