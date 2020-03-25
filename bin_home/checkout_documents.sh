#!/bin/bash

set -e

if [ "$SNPSEQ_WORKSTATION_USERNAME" == "" ];  then
	echo "Error: SNPSEQ_WORKSTATION_USERNAME must be set"
	exit 1;
fi


if [ "$SNPSEQ_WORKSTATION_HOSTNAME" == "" ];  then
	echo "Error: SNPSEQ_WORKSTATION_HOSTNAME must be set"
	exit 1;
fi


scp -rp $SNPSEQ_WORKSTATION_USERNAME@$SNPSEQ_WORKSTATION_HOSTNAME:$HOME/Documents $HOME/
