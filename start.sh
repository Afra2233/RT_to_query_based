#!/bin/bash
#SBATCH -p gpu-short
#SBATCH --nodes=1

#SBATCH --ntasks=1  
#SBATCH --gres=gpu:1
#SBATCH --mem=30G
#SBATCH --cpus-per-task=4

module load anaconda3/2022.05 
source activate rtqbba
cd /scratch/hpc/07/zhang303/RT_to_query_based
srun python attack_cifar10.py