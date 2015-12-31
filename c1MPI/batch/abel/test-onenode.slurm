#!/bin/bash

#SBATCH --job-name=CG-D
#SBATCH --time=00:30:00
#SBATCH --account=nn2849k
#SBATCH --output=./CG/CLASS-D/test/onenode/c18/Output_File.cg5-16-c189.D.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
###SBATCH --exclusive
###SBATCH -w c4-10
#SBATCH -w c18-9
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 16 /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.D.16 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-D/test/onenode/c18/CG5-c189.D.16


