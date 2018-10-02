#!/bin/bash

PORT=$1
NOTEBOOK_DIR=${2:-${SCRATCH}}
cd $NOTEBOOK_DIR

ml load math cudnn
ml load cuda/9.0.176
export PATH=/home/users/alexno/anaconda3/bin:/home/users/alexno/anaconda3/envs/deep-sleep/bin:$PATH
source activate deep-sleep

jupyter lab --no-browser --port=$PORT
