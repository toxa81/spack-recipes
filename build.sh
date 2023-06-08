#!/bin/bash

WORKDIR=$(pwd)

source $WORKDIR/spack/share/spack/setup-env.sh

export SPACK_USER_CONFIG_PATH=$WORKDIR/config

module load cray spack-config-generator

spack -e ./env concretize -f
spack -e ./env install


