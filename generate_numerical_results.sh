#!/bin/bash

# Define the dataset name
DATASET_NAME="asia"

# Define the list of algorithms
ALGORITHMS=("pc" "ges" "notears" "dagma_linear")

# Define the list of sample sizes
SAMPLE_SIZES=(100 1000 10000)

# Loop through each combination of algorithm and sample size
for ALG in "${ALGORITHMS[@]}"
do
  for N_SAMPLES in "${SAMPLE_SIZES[@]}"
  do
    echo "Running: python run.py --dataset $DATASET_NAME --alg $ALG --n_samples $N_SAMPLES"
    python run.py --dataset $DATASET_NAME --alg $ALG --n_samples $N_SAMPLES
  done
done
