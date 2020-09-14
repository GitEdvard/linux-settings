#! /bin/bash
# Delete a vm including the hard disk image
# You must prepare this command by kill the vbox manage process holding the vm to be deleted
# ps -aux | grep <vm name>


if [[ $# -ne 1 ]]; then
        echo "Delete a vm including the hard disk image"
	echo "Usage: vbm-delete.sh <vm name or uuid>"
	echo "You must prepare this command by kill the vbox manage process holding the vm to be deleted"
	echo "ps -aux | grep <vm name>"
	exit 1
fi

vboxmanage unregistervm "$1" -delete

