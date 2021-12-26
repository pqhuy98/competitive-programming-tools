#!/bin/bash

echo "Enter programming language (cpp or js): "
read LANG

echo "Enter problem's name: "
read NAME

echo "Is this an interactive solution (\"y\" for yes, anything else for no)? "
read INTERACTIVE

cp templates/template.$LANG $NAME.$LANG
cp templates/template.txt $NAME.txt

if [[ INTERACTIVE == "y" ]]
then
	touch $NAME-judge.py
fi

echo "Created $NAME.$LANG and $NAME.txt"