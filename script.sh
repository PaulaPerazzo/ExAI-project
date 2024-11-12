#!/bin/bash
#SBATCH --job-name=HAR-trial-2-train
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --gres=gpu:2
#SBATCH -c 8
#SBATCH -o job.log
#SBATCH --output=job_output_har_train_trial_2_2024-11-12.txt
#SBATCH --error=job_error_har_train_trial_2_2024-11-12.txt

# carregar versão python
module load Python/3.9

# ativar ambiente
source ./env/bin/activate

# executar .py
python3 src/train.py