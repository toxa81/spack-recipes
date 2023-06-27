#!/bin/bash

source env.sh

spack -e ./env/sirius concretize -f
spack -e ./env/sirius install


