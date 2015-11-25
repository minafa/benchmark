#!/bin/bash

class=$2
program=$1
numberOfThreads=$3
#numberOfNodes=$((numberOfThreads / 16))
#time=06
#numNodes=$4
#for ((i=1; i<=4; i*=2))
#do
#numberOfNodes
#numberOfThreads=$numberOfNodes*16

echo "#!/bin/bash
#SBATCH --job-name=$program.$class.$numberOfThreads-t2
#SBATCH --time=06:00:00
#SBATCH --account=nn2849k
#SBATCH --output=./CLASS-E/Output_File.$program.$numberOfThreads.$class-ext2-0.out
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=4
#SBATCH --mem-per-cpu=3900M
#SBATCH --exclusive
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n $numberOfThreads /usit/abel/u1/minafa/benchmark/c1MPI/bin/$program.$class.$numberOfThreads  > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CLASS-E/$program.$class.$numberOfThreads-ext2-0
" > runfileD

sbatch runfileD
#done
rm runfileD

