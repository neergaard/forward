#!/bin/bash

PORT=$1
NOTEBOOK_DIR=$2
CONDA_ENV=$3
cd $NOTEBOOK_DIR

export PATH=/home/users/alexno/anaconda3/envs/tensorboard/bin:$PATH
source activate $CONV_ENV

jupyter lab --no-browser --port=$PORT
