#!/bin/bash

#SBATCH --job-name=CG-D
#SBATCH --time=00:25:00
#SBATCH --account=nn2849k
#SBATCH --output=./CG/CLASS-D/test/twonode/c10/Output_File.cg5-24-32.D.out
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
##SBATCH --exclusive
#SBATCH -w c10-2,c10-4
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 32 /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.D.32 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-D/test/twonode/c10/CG5-24.D.32


