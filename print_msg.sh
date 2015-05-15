#!/bin/bash

name=$1
fullname=$*

#dl and install cowsay
wget http://proxy.chtc.wisc.edu/SQUID/ckoch5/cowsay-3.03.tar.gz 
tar xzf cowsay-3.03.tar.gz 
cd cowsay-3.03
./install.sh ./

#print message
bin/cowsay Hello $fullname >> ../$1_greeting.txt

#remove files
cd ..
rm cowsay-3.03.tar.gz 
rm -rf cowsay-3.03/
