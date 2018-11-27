#!/bin/bash
PORT=$1
TENSORBOARD_DIR=$2
SCRIPT=${3:-"none"}

echo $SCRIPT
if [ "$SCRIPT" != "none" ]
then
	echo $SCRIPT
	source $SCRIPT
fi

export PATH=/home/users/alexno/miniconda3/envs/tensorboard/bin:/home/users/alexno/miniconda3/bin:$PATH
source activate tensorboard
tensorboard --logdir $TENSORBOARD_DIR --port=$PORT
