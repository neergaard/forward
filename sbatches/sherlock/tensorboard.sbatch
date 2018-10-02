#!/bin/bash
PORT=$1
TENSORBOARD_DIR=$2

export PATH=/home/users/alexno/anaconda3/envs/tensorboard/bin:$PATH
source activate tensorboard
python -m tensorboard.main --logdir $TENSORBOARD_DIR --debug --port=$PORT
