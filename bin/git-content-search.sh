#! /bin/bash
# Usage: git-content-search.sh <search pattern>
# I havn't really understood how this script works yet...
if [[ $# -ne 1 ]]; then
	echo "Usage: git-content-search.sh <search pattern>"
	exit 1	
fi
git grep $1 $(git rev-list --all)

