#!/bin/bash
# Name of the job
#SBATCH --job-name=aSi_on_cSi

# Submission details
#SBATCH --qos=regular
#SBATCH --constraint=haswell
# SBATCH --time=15
#SBATCH --nodes=4
#SBATCH --tasks-per-node=32 # fastest is 2 cpus per task (haswell has 2 cpus per core)
#SBATCH --cpus-per-task=2
# SBATCH -c 2
#SBATCH --mem=0   # max memory haswell is 118G, knl is 87G
#SBATCH -t 1-12:00                      # Runtime in D-HH:MM format
#SBATCH --array=1-9

# Outputs
#SBATCH -o 'outputs/haswell_4nodes_32tasks_1thread_%j_%t.output' #File to which STDOUT will be written
#SBATCH --mail-user="Zeke????@ucdavis.edu"
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
