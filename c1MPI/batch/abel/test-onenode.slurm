#!/bin/bash

#SBATCH --job-name=CG-C
#SBATCH --time=00:20:00
#SBATCH --account=nn2849k
#SBATCH --output=./CG/CLASS-C/16nodes/20jan/output_File.cg-c.128.out
#SBATCH --nodes=8
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
#SBATCH --exclusive
###SBATCH -w c8-30

source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 128 /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.C.128 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-C/16nodes/20jan/CG.C.128


