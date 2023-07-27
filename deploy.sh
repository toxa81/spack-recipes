#!/bin/bash

git clone --depth 1 https://github.com/spack/spack.git

source env.sh

spack config add config:install_tree:root:$WORKDIR/install
spack config add packages:all:variants:cuda_arch=80

spack external find --not-buildable git perl cpio m4 autoconf automake pkgconf curl sqlite tar xz zip bzip2

spack compiler find /usr/bin

spack install gcc@11.4.0 %gcc@7

spack compiler find `spack location -i gcc@11.4.0`

spack install nvhpc@22.5 %gcc@11

spack compiler find $(spack location -i nvhpc@22.5)/Linux_x86_64/22.5/compilers
