#!/bin/bash

#SBATCH --job-name=CG-D
#SBATCH --time=00:40:00
#SBATCH --account=nn2849k
#SBATCH --output=./CG/CLASS-D/test/onenode/c10/p8/Output_File.cg1-102-p8.D.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem-per-cpu=3900M
#SBATCH --exclusive
#SBATCH -w c18-2
###SBATCH -w c10-2
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 8 /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.D.8 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-D/test/oneonode/c10/p8/CG1-102.D.8

