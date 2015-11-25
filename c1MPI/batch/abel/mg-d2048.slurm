#!/bin/bash

#SBATCH --job-name=NAS-MG
#SBATCH --time=00:05:00
#SBATCH --account=nn2849k
#SBATCH --output=./Output_FileMG2048.out
#SBATCH --nodes=128
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3G

source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

#export GASNET_PHYSMEM_MAX=4G
#export GASNET_PHYSMEM_NOPROBE=1


mpirun -n 2048 /usit/abel/u1/minafa/benchmark/c1MPI/bin/mg.D.2048 > MG.D.2048

