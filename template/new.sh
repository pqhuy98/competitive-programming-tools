#!/bin/bash

echo -n "Enter programming language (cpp or js): "
read LANG

echo -n "Enter problem's name: "
read NAME

cp templates/template.$LANG $NAME.$LANG
cp templates/template.txt $NAME.txt

echo "Created $NAME.$LANG and $NAME.txt"
