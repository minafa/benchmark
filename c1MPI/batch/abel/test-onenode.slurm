#!/bin/bash

#SBATCH --job-name=CG-C-ex
#SBATCH --time=00:20:00
#SBATCH --account=nn2849k
#SBATCH --output=./CG/CLASS-C/onenode/24jan/output_File.cg-c-ex-c411.16.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
#SBATCH --exclusive
#SBATCH -w c4-11

source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 16 /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.C.16 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-C/onenode/24jan/CG.c-ex.16-c411


