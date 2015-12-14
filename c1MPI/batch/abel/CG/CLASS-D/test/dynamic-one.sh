#!/bin/bash

for ((i=1; i<3; i++))
do

sbatch ./one-node2.slurm

done
