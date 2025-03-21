#!/bin/bash
#SBATCH -w x1000c4s2b0n0
#SBATCH --ntasks=2
#SBATCH --gpus-per-node=8
#SBATCH --output=slurm_output/mi250x_test.out
#SBATCH --error=slurm_output/mi250x_test.err

module load cray-mpich

srun -n 2 ./run_kernel.sh