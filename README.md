# HPC-Winter-Camp-HPL

## Installation
1. Change directory to home: `cd ~`
2. Clone the repository: `git clone https://github.com/NTHU-SC/HPC-Winter-Camp-HPL.git HPL`
3. Install openblas: `sbatch ./openblas.sh`
4. Build HPL: `sbatch ./hpl.sh`

## Run
1. Modify `~/HPL/hpl-2.3/bin/linux/HPL.dat`
2. `cd ~/HPL/hpl-2.3/bin/linux`
3. Run: `sbatch ~/HPL/run.sh`

## Submit
1. Create a new directory for the judge: `mkdir -p ~/.hpc_camp`
2. If you are the first time to submit, run: `echo "export PATH=\$PATH:/project/ACD114003/bin/" >> ~/.bashrc`
3. Submit: `hpl-judge`
