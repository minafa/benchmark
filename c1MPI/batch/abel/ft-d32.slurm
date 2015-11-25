#!/bin/bash

#SBATCH --job-name=NAS-FT
#SBATCH --time=00:15:00
#SBATCH --account=nn2849k
##SBATCH --output=./Output_FileCG128.out
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3800M

source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

#export GASNET_PHYSMEM_MAX=4G
#export GASNET_PHYSMEM_NOPROBE=1


mpirun -n 32 /usit/abel/u1/minafa/benchmark/c1MPI/bin/ft.D.32 > FT.D.32

