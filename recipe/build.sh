#!/bin/bash

if [[ -n "$mpi" && "$mpi" != "nompi" ]]; then
  export CC=mpicc
fi

if [[ $(uname) == Darwin ]]; then
    export LDFLAGS="-headerpad_max_install_names $LDFLAGS"
fi

export netCDF4_DIR=$PREFIX
export HDF5_DIR=$PREFIX

${PYTHON} -m pip install --no-deps --ignore-installed .
