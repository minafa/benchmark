#!/bin/bash

#SBATCH --job-name=CG-D-1n
#SBATCH --time=01:30:00
#SBATCH --account=nn2849k
#SBATCH --output=./onenode/Output_File-c1333-4.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
#SBATCH -w c13-33
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 16 /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.D.16 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-D/test/onenode/CG1.c1333-4.16

