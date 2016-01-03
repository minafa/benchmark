#!/bin/bash

#SBATCH --job-name=CG-D
#SBATCH --time=02:55:00
#SBATCH --account=nn2849k
#SBATCH --output=./CG/CLASS-D/test/twonode/c10/p8/Output_File.cg10.D.out
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=4
#SBATCH --mem-per-cpu=3900M
#SBATCH --exclusive
#SBATCH -w c10-2,c10-4
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 8 /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.D.8 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-D/test/twonode/c10/p8/CG10.D.8

