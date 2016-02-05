#!/bin/bash
#SBATCH --job-name=bw
#SBATCH --time=00:15:00
#SBATCH --account=nn2849k
#SBATCH --output=./bw.out
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
#SBATCH --exclusive
##SBATCH -w c4-11,c4-17
source /cluster/bin/jobsetup

intel/2015.3
openmpi.intel/1.8.6

##mpiexec_mpt  -np 32 -stats ~/benchmark/c1MPI/bin/cg.C.32 > ~/benchmark/c1MPI/batch/CG.C0.32

mpirun -n 32 ~/osu-micro-benchmarks-5.1/mpi/pt2pt/osu_bibw > ~/benchmark/c1MPI/batch/bandwidth

