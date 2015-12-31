#!/bin/bash

#SBATCH --job-name=CG-D
#SBATCH --time=00:20:00
#SBATCH --account=nn2849k
#SBATCH --output=./CG/CLASS-D/test/twonode/c1/Output_File.cg3-1516-32.D.out
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
##SBATCH --exclusive
#SBATCH -w c1-15,c1-16
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 32 /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.D.32 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-D/test/twonode/c1/CG3-1516.D.32


