#!/bin/bash

#SBATCH --job-name=CG-D
#SBATCH --time=00:25:00
#SBATCH --account=nn2849k
#SBATCH --output=./CG/CLASS-D/test/twonode/c18/n4/Output_File.cg6-64.D.out
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
##SBATCH --exclusive
#SBATCH -w c18-3,c18-4,c18-5,c18-6
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 64 /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.D.64 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-D/test/twonode/c18/n4/CG6.D.64


