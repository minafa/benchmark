#!/bin/bash

#SBATCH --job-name=CG-C
#SBATCH --time=00:15:00
#SBATCH --account=nn2849k
#SBATCH --output=./CG/CLASS-C/twonode/Output_File.32.C-n9.out
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
#SBATCH --exclusive
##SBATCH -w c5-1,c9-21
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 32 /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.C.32 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-C/twonode/CG9.C.32


