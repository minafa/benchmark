#!/bin/bash

class=$2
program=$1
numberOfThreads=$3
numberOfNodes=$((numberOfThreads / 16))
time=30

##SBATCH --nodelist=c1-6,c1-10

#t=$4
path=$4

for ((i=6; i<=10; i++))
do
echo "#!/bin/bash
#SBATCH --job-name=$program.$class.$numberOfThreads
#SBATCH --time=00:$time:00
#SBATCH --account=nn2849k
#SBATCH --output=./$path/Output_File.$program.$numberOfThreads.$class-$i.out
#SBATCH --nodes=$numberOfNodes
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
#SBATCH --exclusive

source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n $numberOfThreads /usit/abel/u1/minafa/benchmark/c1MPI/bin/$program.$class.$numberOfThreads  > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/$path/$program.$class.$numberOfThreads-$i" > runfileD 
sbatch runfileD
rm runfileD
done
 
