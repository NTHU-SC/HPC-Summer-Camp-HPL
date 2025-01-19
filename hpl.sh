#!/usr/bin/bash

#SBATCH --job-name=compile-hpl
#SBATCH --nodes=1
#SBATCH --time=00:30:00
#SBATCH --partition=hpcxai1
#SBATCH --account=ACD114003

date
cd $HOME
module load gcc/11.2.0
module load openmpi/5.0.2

cd ~/HPL

cp /work1/koying0523/share/2025-Winter-Camp/hpl-2.3.tar.gz .
tar xvf hpl-2.3.tar.gz && cd hpl-2.3/setup
sh make_generic
cd ../
cp ~/HPC-Winter-Camp-HPL/Make.linux .

make arch=linux

date