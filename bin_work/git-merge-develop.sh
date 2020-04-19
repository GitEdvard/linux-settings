#! /bin/bash
# Usage: <repository name> 
if [[ $# -ne 1 ]]; then
	echo "Usage:  git-merge-develop <repository name>"
	exit 1	
fi
if [[ $(git rev-parse --abbrev-ref HEAD) != "dev" ]]; then
	echo "you need to be at the developer branch!"
	exit 1
fi
git fetch "$1" dev
git merge "$1"/dev

