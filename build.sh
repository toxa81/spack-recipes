#!/bin/bash

source env.sh

spack -e ./env/sirius concretize -f
spack -e ./env/sirius install

spack -e ./env/qe concretize -f
spack -e ./env/qe install


