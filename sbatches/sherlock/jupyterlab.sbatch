#!/bin/bash

PORT=$1
NOTEBOOK_DIR=${2:-${HOME}}
SCRIPT=${3:-"none"}
echo $NOTEBOOK_DIR
cd $NOTEBOOK_DIR

echo $SCRIPT
if [ "$SCRIPT" != "none" ]
then
	echo $SCRIPT
	source $SCRIPT
fi
jupyter lab --no-browser --port=$PORT
