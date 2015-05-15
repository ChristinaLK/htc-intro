#!/bin/bash

## Get python and build
wget http://proxy.chtc.wisc.edu/SQUID/ckoch5/Python-2.7.7.tgz
tar xzf Python-2.7.7.tgz
cd Python-2.7.7
DIR=$(pwd)
./configure 
make altinstall prefix=$DIR exec-prefix=$DIR
cd ..
alias python="$DIR/python"

## Run python code   
#wget files from above, unpack, run

## Remove files
rm Python-2.7.7.tgz
rm -rf Python-2.7.7