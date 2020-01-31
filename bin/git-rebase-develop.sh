#! /bin/bash
# Usage: <repository name> 
if [[ $# -ne 1 ]]; then
	echo "Usage:  git-rebase-develop <repository name>"
	exit 1	
fi
if [[ $(git rev-parse --abbrev-ref HEAD) == "develop" ]]; then
	echo "You can't be at the developer branch!"
	exit 1
fi
git co develop
git-merge-develop.sh "$1"
git co -
git rebase develop

