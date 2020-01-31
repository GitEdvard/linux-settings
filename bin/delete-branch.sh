#! /bin/bash
# Usage: <repository name> 
if [[ $# -ne 2 ]]; then
	echo "Usage:  git-merge-develop.sh <repository name>
	exit 1	
fi
git fetch "$1" develop
git merge "$1"/develop

