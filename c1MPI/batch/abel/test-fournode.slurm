#!/bin/bash

#SBATCH --job-name=CG-D
#SBATCH --time=00:25:00
#SBATCH --account=nn2849k
#SBATCH --output=./CG/CLASS-D/test/twonode/c17/Output_File.cg11-64.D.out
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
##SBATCH --exclusive
#SBATCH -w c17-4,c17-5,c17-6,c17-7
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 64 /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.D.64 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-D/test/twonode/c17/CG11.D.64


