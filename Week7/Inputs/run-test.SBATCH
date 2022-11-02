#!/bin/bash -e

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=10
#SBATCH --gres=gpu
#SBATCH --time=12:00:00
#SBATCH --mem=90GB
#SBATCH --job-name=lysozyme_1LYS

/scratch/work/public/apps/alphafold/2.2.0/run-alphafold-2.2.0.py \
  --fasta_paths=$(pwd)/lysozyme_1LYS.fasta \
  --max_template_date=2020-05-14 \
  --output_dir=$(pwd)
