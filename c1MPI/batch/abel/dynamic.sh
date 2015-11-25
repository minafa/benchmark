#!/bin/bash

class=$2
program=$1
numberOfThreads=$3
numberOfNodes=$((numberOfThreads / 16))
#numberofNodes=
time=30
#for ((i=1; i<=4; i*=2))
#do
#numberOfNodes
#numberOfThreads=$numberOfNodes*16
t=$4
path=$5

echo "#!/bin/bash
#SBATCH --job-name=$program.$class.$numberOfThreads-$t
#SBATCH --time=00:$time:00
#SBATCH --account=nn2849k
#SBATCH --output=./$path/Output_File.$program.$numberOfThreads.$class-$t.out
#SBATCH --nodes=$numberOfNodes
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
#SBATCH --exclusive
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n $numberOfThreads /usit/abel/u1/minafa/benchmark/c1MPI/bin/$program.$class.$numberOfThreads  > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/$path/$program.$class.$numberOfThreads-$t
" > runfileD

sbatch runfileD
#done
rm runfileD

