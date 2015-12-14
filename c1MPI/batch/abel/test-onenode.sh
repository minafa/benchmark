#!/bin/bash

for ((i=1; i<=3; i++))
do
echo "#!/bin/bash

#SBATCH --job-name=CG-D.test1
#SBATCH --time=00:12:00
#SBATCH --account=nn2849k
#SBATCH --output=./CG/CLASS-D/test/Output_File.cg.D.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
#SBATCH --exclusive
#SBATCH -w c12-20
source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 16 /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.D.16 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-D/test/CG.D.16"> runfileD
sbatch runfileD
rm runfileD
done


