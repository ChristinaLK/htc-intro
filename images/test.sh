#!/bin/bash

#install python
DIR=$(pwd)
wget https://www.python.org/ftp/python/2.7.7/Python-2.7.7.tgz
tar zxf Python-2.7.7.tgz
cd Python-2.2.7
./configure
make altinstall prefix=$DIR exec-prefix=$DIR
alias python="$DIR/Python-2.2.7/python"

#load input file
input_file = $1

#create tableaux
for permutation in file
DO
	python rsk.py $permutation
DONE
