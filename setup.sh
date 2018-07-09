#!/bin/bash
#
# Sets up parameters for use with other scripts.  Should be run once.
# Sample usage: bash setup.sh
read -p "Sherlock username: "  USERNAME

read -p "Port to use (pick a random number in range 49152-65535): "  PORT

read -p "Sherlock partition (default: mignot): "  PARTITION
PARTITION=${PARTITION:-mignot}

read -p "Browser to use (default: /Applications/Safari.app/): "  BROWSER
BROWSER=${partition:-"/usr/bin/firefox"}

MEM=20G

TIME=8:00:00

for var in USERNAME PORT PARTITION BROWSER MEM TIME
do
    echo "$var="'"'"$(eval echo '$'"$var")"'"'
done >> params.sh
