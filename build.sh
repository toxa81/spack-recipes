#!/bin/bash

source env.sh

spack -e ./env/sirius concretize -f
spack -e ./env/sirius install

spack -e ./env/qe-71-cpu concretize -f
spack -e ./env/qe-71-cpu install

spack -e ./env/qe-72-cpu concretize -f
spack -e ./env/qe-72-cpu install

spack -e ./env/qe-71-gpu concretize -f
spack -e ./env/qe-71-gpu install

spack -e ./env/qe-72-gpu concretize -f
spack -e ./env/qe-72-gpu install



