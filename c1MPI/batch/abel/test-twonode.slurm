#!/bin/bash

#SBATCH --job-name=CG-D
#SBATCH --time=00:20:00
#SBATCH --account=nn2849k
#SBATCH --output=./CG/CLASS-D/test/Output_File.cg3-32-n.D.out
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
##SBATCH --exclusive
#SBATCH -w c4-10,c4-16
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 32 /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.D.32 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-D/test/CG3-n.D.32


