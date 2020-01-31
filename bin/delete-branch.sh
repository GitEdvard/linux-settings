#! /bin/bash
# Usage: <repository name> 
if [[ $# -ne 2 ]]; then
	echo "Usage:  delete-branch.sh <repository name> <branch name>"
	exit 1	
fi
git br -D "$2"
git push --delete "$1" "$2"

