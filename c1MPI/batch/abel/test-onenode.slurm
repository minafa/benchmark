#!/bin/bash

#SBATCH --job-name=MG-C
#SBATCH --time=00:20:00
#SBATCH --account=nn2849k
#SBATCH --output=./MG/CLASS-C/1node/26jan/output_File.mg-c-ex-c515.16.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
#SBATCH --exclusive
#SBATCH -w c5-15

source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 16 /usit/abel/u1/minafa/benchmark/c1MPI/bin/mg.C.16 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/MG/CLASS-C/1node/26jan/MG.c-ex.16-c515


