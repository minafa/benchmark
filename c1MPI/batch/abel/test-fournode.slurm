#!/bin/bash

#SBATCH --job-name=CG-D
#SBATCH --time=00:25:00
#SBATCH --account=nn2849k
#SBATCH --output=./CG/CLASS-D/test/twonode/c11/Output_File.cg10-64.D.out
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
##SBATCH --exclusive
#SBATCH -w c11-6,c11-8,c11-11,c11-12
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 64 /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.D.64 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-D/test/twonode/c11/CG10.D.64


