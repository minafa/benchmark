#!/bin/bash

class=$2
program=$1
#numberOfThreads=$3
numberOfNodes=1
numprocs=16

time=30

echo "#!/bin/bash
#SBATCH --job-name=$program.$class.$numberOfNodes
#SBATCH --time=00:$time:00
#SBATCH --account=nn2849k
#SBATCH --output=./Output_File.$program.$numberOfNodes.out
#SBATCH --nodes=$numberOfNodes
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3G

source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n $numprocs lu.$class  > $program.$class.$numberOfNodes.result
" > runfileD

sbatch runfileD

