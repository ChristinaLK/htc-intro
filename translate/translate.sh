#!/bin/bash

word=`cat word.txt`

for file in french.txt spanish.txt german.txt
do
	grep $word $file | cut -d : -f 2 > temp
	mv temp $file
done