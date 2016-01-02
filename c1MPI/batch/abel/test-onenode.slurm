#!/bin/bash

#SBATCH --job-name=CG-D
#SBATCH --time=00:30:00
#SBATCH --account=nn2849k
#SBATCH --output=./CG/CLASS-D/test/onenode/c10/Output_File.cg5-16-c104.D.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
###SBATCH --exclusive
###SBATCH -w c10-4
#SBATCH -w c10-4
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 16 /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.D.16 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-D/test/onenode/c10/CG5-c104.D.16


