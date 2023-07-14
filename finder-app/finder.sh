#!/bin/bash
#
# arg1 = directory path (filesdir)
# arg2 = search string (searchstr)

if [ $# -ne 2 ]
then
	echo "Invalid arguments"
	echo "Usage: " $0 "directory string"
	exit 1
fi

if [ -d $1 ]
then
	fileCount=`find $1 -type f | wc -l`
	matchCount=`fgrep -R $2 $1/* | wc -l`
	echo "The number of files are $fileCount and the number of matching lines are $matchCount"
else
	echo $1 "is not a directory"
	exit 1
fi
