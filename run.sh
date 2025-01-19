#!/usr/bin/bash

#SBATCH --job-name=run_hpl
#SBATCH --nodes=1
#SBATCH --time=00:30:00
#SBATCH --partition=hpcxai1
#SBATCH --account=ACD114003
#SBATCH --ntasks=112

cd $HOME/HPL/hpl-2.3/bin/linux

mpirun -np 112 ./xhpl