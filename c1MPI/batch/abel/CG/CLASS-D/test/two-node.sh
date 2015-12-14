#!/bin/bash

#SBATCH --job-name=CG-D-2n
#SBATCH --time=00:30:00
#SBATCH --account=nn2849k
#SBATCH --output=./twonode/Output_File-c13.out
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
#SBATCH -w c13-33,c13-35
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 32 /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.D.32 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-D/test/twonode/CG1.c13.32

#sbatch finalfile
#rm finalfile
#done


