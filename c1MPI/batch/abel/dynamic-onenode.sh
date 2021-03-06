#!/bin/bash

numrun=$1

echo "#!/bin/bash

#SBATCH --job-name=CG-C
#SBATCH --time=00:30:00
#SBATCH --account=nn2850k
#SBATCH --output=./CG/CLASS-C/onenode/output_File.cg-c.16-$numrun.out
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --mem-per-cpu=3900M
#SBATCH --exclusive

source /cluster/bin/jobsetup

module load intel/2015.3
module load openmpi.intel/1.8.6

mpirun -n 16 /usit/abel/u1/minafa/benchmark/c1MPI/bin/cg.C.16 > /usit/abel/u1/minafa/benchmark/c1MPI/batch/abel/CG/CLASS-C/onenode/CG.C.16-$numrun" > runfileD
sbatch runfileD
rm runfileD

