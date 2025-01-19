#!/usr/bin/bash

#SBATCH --job-name=compile-openblas
#SBATCH --nodes=1
#SBATCH --time=00:30:00
#SBATCH --partition=hpcxai1
#SBATCH --account=ACD114003
#SBATCH --ntasks=112

date
cd $HOME
module load gcc/11.2.0
module load openmpi/5.0.2

cp /work1/koying0523/share/2025-Winter-Camp/OpenBLAS-0.3.29.tar.gz $HOME
tar xf OpenBLAS-0.3.29.tar.gz
cd OpenBLAS-0.3.29 && rm -fr build
mkdir -p build && cd build
CC=mpicc CXX=mpicxx FC=mpifort cmake .. -DCMAKE_INSTALL_PREFIX=$HOME/OpenBLAS-0.3.29/build
make install -j 112
date