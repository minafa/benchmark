#!/bin/bash

#SBATCH --job-name=NAS-IS-D
#SBATCH --time=00:40:00
#SBATCH --account=nn2849k
#SBATCH --output=./Output_FileIS-D2048.out
#SBATCH --nodes=128
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3800M

source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

#export GASNET_PHYSMEM_MAX=4G
#export GASNET_PHYSMEM_NOPROBE=1

mpirun -n 2048 /usit/abel/u1/minafa/benchmark/c1MPI/bin/is.D.2048 > IS.D.2048

