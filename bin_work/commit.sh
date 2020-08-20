#! /bin/bash
# Usage: <commit message> 
if [[ $# -ne 1 ]]; then
	echo "Usage:  commit <message>"
	exit 1	
fi
git add .
git ci -m "$1"

