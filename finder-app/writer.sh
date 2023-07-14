#!/bin/bash
#
# arg1 = filename with path (writefile)
# arg2 = write string (writestr)

if [ $# -ne 2 ]
then
	echo "Invalid arguments"
	echo "Usage: " $0 "filename string"
	exit 1
fi

# create duirectory if it doesn't exist
pathOnly=`dirname $1`
if [ ! -d $pathOnly ]
then
	mkdir -p $pathOnly
fi

echo $2 > $1

if [ $? -eq 1 ]
then
	echo "Unable to create file"
	exit 1
fi

