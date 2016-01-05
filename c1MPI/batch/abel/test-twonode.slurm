#!/bin/bash

#SBATCH --job-name=CG-D
#SBATCH --time=00:25:00
#SBATCH --account=nn2849k
#SBATCH --output=./CG/CLASS-D/test/twonode/c17/Output_File.cg8-32.D.out
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
##SBATCH --exclusive
#SBATCH -w c17-4,c17-5
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 32 /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.D.32 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-D/test/twonode/c17/CG8.D.32


