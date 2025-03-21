#!/bin/bash
ITER=64
EXP=20000
export HIP_VISIBLE_DEVICES=$SLURM_PROCID

mkdir -p execs
make ITER=$ITER EXP=$EXP

./execs/kernel 134217728
