#! /bin/bash
# Usage: -c <parent commit or branch> -u <username>
while getopts "c:u:" opt; do
	case $opt in
		c)
			commit="${OPTARG}"
			;;
		u)
			user="${OPTARG}"
			;;
		\?)
			exit 1
			;;
	esac
done
echo "commit is $commit"
echo "user is $user"

