#!/bin/bash

name=$1
fullname=$*

tar xzf cowsay-3.03.tar.gz 
cd cowsay-3.03
./install.sh ./
bin/cowsay Hello $fullname >> ../$1_greeting.txt
cd ..
rm -rf cowsay-3.03/
