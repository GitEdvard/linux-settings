#! /bin/bash
# Usage: <parent commit or branch> <username>
if [[ $# -ne 2 ]]; then
	echo "Usage: <parent commit> <git user name>"
	exit 1
fi

git rev-list --merges "$1" |
    while read rev; do
        p2=$(git rev-parse ${rev}^2)
        person=$(git log --no-walk --pretty=format:%cn $p2)
        [ "$person" == "$2" ] && echo $rev
    done |
    git log --stdin --no-walk # add formatting etc as desired

