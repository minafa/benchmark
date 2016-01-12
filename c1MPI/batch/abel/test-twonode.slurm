#!/bin/bash

#SBATCH --job-name=CG-D-test
#SBATCH --time=00:30:00
#SBATCH --account=nn2849k
#SBATCH --output=./CG/CLASS-D/test/twonode/c17/Output_File.new-16.D.out
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=8
#SBATCH --mem-per-cpu=3900M
#SBATCH --exclusive
##SBATCH -w c5-1,c9-21
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 16 /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.D.16 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-D/test/twonode/c17/CG1.new.D.16


