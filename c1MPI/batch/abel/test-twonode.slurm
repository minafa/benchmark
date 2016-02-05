#!/bin/bash

#SBATCH --job-name=CG-C-ex
#SBATCH --time=00:15:00
#SBATCH --account=nn2849k
#SBATCH --output=./CG/CLASS-C/twonode/Output_File.32.C-c411-c417-core.out
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
#SBATCH --exclusive
#SBATCH -w c4-11,c4-17
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 32 --report-bindings --bind-to-core /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.C.32 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-C/twonode/CG.C.32-c411-c417-core


