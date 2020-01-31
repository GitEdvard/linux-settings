if [[ $# -ne 1 ]] ; then 
	echo "Usage <path>"
	exit 1
fi
python /usr/bin/nosetests $1 
