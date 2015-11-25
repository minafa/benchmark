#!/bin/bash

class=$2
program=$1
numberOfThreads=$3
numberOfNodes=$((numberOfThreads / 16))
#numberofNodes=
time=10
#for ((i=1; i<=4; i*=2))
#do
#numberOfNodes
#numberOfThreads=$numberOfNodes*16

echo "#!/bin/bash
#SBATCH --job-name=$program.$class.$numberOfThreads-t5
#SBATCH --time=00:$time:00
#SBATCH --account=nn2849k
#SBATCH --output=./CLASS-B/Output_File.$program.$numberOfThreads.$class-ext5.out
#SBATCH --nodes=$numberOfNodes
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3800M
#SBATCH --exclusive
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n $numberOfThreads /usit/abel/u1/minafa/benchmark/c1MPI/bin/$program.$class.$numberOfThreads  > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CLASS-B/$program.$class.$numberOfThreads-ext5
" > runfileD

sbatch runfileD
#done
rm runfileD

