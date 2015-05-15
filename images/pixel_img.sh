#!/bin/bash

##dl and untar
wget http://proxy.chtc.wisc.edu/SQUID/ckoch5/jp2a-1.0.6.tar.gz
wget http://proxy.chtc.wisc.edu/SQUID/ckoch5/jpegsrc.v9a.tar.gz
tar xzf jp2a-1.0.6.tar.gz 
tar xzf jpegsrc.v9a.tar.gz 

##remove tarballs
rm jpegsrc.v9a.tar.gz
rm jp2a-1.0.6.tar.gz

##install
cd jpeg-9a/
jpegdir=$(pwd)
./configure --prefix=$jpegdir -q
make
make install

cd ../jp2a-1.0.6
jp2adir=$(pwd)
./configure --exec-prefix=$jp2adir --prefix=$jp2adir --with-jpeg-lib=$jpegdir -q
make
make install
cd ..

##run jp2a
alias jp2a="$jp2adir/bin/jp2a"
image=*.jpg
jp2a -invert $image > ascii_$image

