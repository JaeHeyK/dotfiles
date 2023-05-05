#!/bin/zsh
if [ -z $1 ]
then
	echo "src num required"
	exit 1
fi

SCRIPT_DIR=`dirname $0`

mkdir $SCRIPT_DIR/$1 && touch $SCRIPT_DIR/$1/$1.c && cd $SCRIPT_DIR/$1
