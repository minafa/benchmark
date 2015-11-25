#!/bin/bash

class=$2
program=$1
num-processes=$3
num-nodes=$((num-processes / 16))
time=30

echo "#!/bin/bash
#SBATCH --job-name=$program.$class
#SBATCH --time=00:$time:00
#SBATCH --account=nn2849k
#SBATCH --output=./Output_File.$program.$num-processes.out
#SBATCH --nodes=$num-nodes
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M

source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n $num-processes mg.$class.$num-processes  > $program.$class.$num-processes.results"
