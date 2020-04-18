#!/bin/bash

FILE=$1
NAME="${FILE%%.*}"
LANG="${FILE##*.}"

if [[ $LANG == "cpp" ]]
then
	g++ $NAME.$LANG -std=c++14 && ./a.out < $NAME.txt 2> debug.txt && rm a.out
elif [[ $LANG == "js" ]]
then
	node $NAME.$LANG < $NAME.txt
fi