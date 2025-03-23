#!/bin/bash
export HIP_VISIBLE_DEVICES=$SLURM_PROCID

vector_size=134217728
n_experiments=20000

./kernel_mi250x ${vector_size} ${n_experiments}