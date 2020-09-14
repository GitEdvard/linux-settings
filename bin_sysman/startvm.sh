#! /bin/bash
# Start vm without using gui. 

if [[ $# -ne 1 ]]; then
	echo "Usage: startvm.sh <vm name or uuid>"
	exit 1
fi

vboxmanage startvm "$1" --type headless

