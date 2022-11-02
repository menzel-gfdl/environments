#!/bin/bash -e

module load gcc/11.3.0
module load openmpi/4.1.4
module load cuda/11.7
module load hdf5/1.12.2
module load netcdf/4.9.0

PREFIX="/storage/home/Raymond.Menzel/grtcode-with-gpu-clouds"
CC="/opt/gcc/11.3.0/bin/gcc"
CPPFLAGS="-I${PREFIX}/include -I/usr/local/cuda-11.7/include"
CFLAGS="-g -O3"
CXX="/opt/gcc/11.3.0/bin/g++"
CXXFLAGS="-g -O3"
LDFLAGS="-L${PREFIX}/lib -L/usr/local/cuda-11.7/lib64"
NVCC="/usr/local/cuda-11.7/bin/nvcc"
NVCCFLAGS="-g -O3"
NVCCLDFLAGS="-L/usr/local/cuda-11.7/lib64"
MPICC="/opt/openmpi/4.1.4/GNU/11.3.0/bin/mpicc"
MPICXX="/opt/openmpi/4.1.4/GNU/11.3.0/bin/mpic++"
RPATH="-Wl,-rpath=${PREFIX}/lib -Wl,-rpath=/usr/local/cuda-11.7/lib64"
