#!/bin/bash

#SBATCH --job-name=CG-D-2n
#SBATCH --time=00:30:00
#SBATCH --account=nn2849k
#SBATCH --output=./twonode/c1/Output_File-c1-5.out
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
#SBATCH -w c1-13,c1-14
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 32 /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.D.32 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-D/test/twonode/c1/CG.c1-5.32


