#!/bin/bash

#SBATCH --job-name=NAS-FT-C
#SBATCH --time=00:05:00
#SBATCH --account=nn2849k
#SBATCH --output=./Output_FileFT-c512.out
#SBATCH --nodes=32
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3800M

source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

#export GASNET_PHYSMEM_MAX=4G
#export GASNET_PHYSMEM_NOPROBE=1

#cd $SCRATCH

mpirun -n 512 /usit/abel/u1/minafa/benchmark/c1MPI/bin/ft.C.512 > FT.C.512

