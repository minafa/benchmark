#!/bin/bash

numberofrunning=$1
do 
echo "#!/bin/bash

#SBATCH --job-name=CG-D
#SBATCH --time=00:40:00
#SBATCH --account=nn2849k
#SBATCH --output=./CG/CLASS-D/test/twonode/p8/Output_File.$numberofrunning-D.out
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=8
#SBATCH --mem-per-cpu=3900M
#SBATCH --exclusive
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 16 /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.D.16 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-D/test/twonode/p8/CG.16-$numberofrunning" > runfileD 
sbatch runfileD
rm runfileD
done

