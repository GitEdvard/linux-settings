#! /bin/bash
# Usage: <search phrase> 
if [[ $# -ne 1 ]]; then
	echo "Usage:  grep-commonlims <search phrase>"
	exit 1	
fi
grep -r "$1" --exclude-dir=node_modules
