#!/bin/bash

FILE=$1
TEST_SET=$2
NAME="${FILE%%.*}"
LANG="${FILE##*.}"

CMD0=""
CMD1=""

if [[ $LANG == "cpp" ]]
then
	CMD0="g++ ${NAME}.${LANG} -o ${NAME}.out -std=c++14"
	CMD1="./${NAME}.out"
else
	echo "Only .cpp files are not supported."
fi

$CMD0
python interactive_runner.py python3 ./$NAME-judge.py $TEST_SET -- $CMD1
rm ${NAME}.out