#!/bin/bash
#SBATCH --job-name=HAR-trial-2-opt
#SBATCH --ntasks=1
#SBATCH --mem 16G
#SBATCH --gres=gpu:2
#SBATCH -c 8
#SBATCH -o job.log
#SBATCH --output=job_output_har_opt_trial_2_2024-11-11.txt
#SBATCH --error=job_error_har_opt_trial_2_2024-11-11.txt

# carregar versão python
module load Python/3.9

# ativar ambiente
source ./env/bin/activate

# executar .py
python3 src/optimization.py