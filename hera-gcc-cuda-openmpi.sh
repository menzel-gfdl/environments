#!/bin/bash -e

module load gnu/9.2.0
module load openmpi/3.1.4
module load cuda/11.2.1

PREFIX="/scratch2/GFDL/gfdlscr/Raymond.Menzel/global-toa-spectra"
CC="/apps/gnu/gcc-9.2.0/bin/gcc"
CPPFLAGS="-I${PREFIX}/include -I/apps/cuda/cuda-11.2.1/include"
CXX="/apps/gnu/gcc-9.2.0/bin/g++"
NVCC="/apps/cuda/cuda-11.2.1/bin/nvcc"
LDFLAGS="-L${PREFIX}/lib -L/apps/cuda/cuda-11.2.1/lib64"
NVCCLDFLAGS="-L/apps/cuda/cuda-11.2.1/lib64"
