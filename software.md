# "Backpacking with Code"
## Running software on the Open Science Grid (or anywhere!)

## Software and Portability

* Software (aka programs, code, scripts) are all different forms of 
providing *instructions* to a computer.
* Running a piece of software *depends* on many factors: compilation, 
libraries/packages, base operating system, etc.
* To run software in OSG (or any distributed system), one must consider 
these factors and make the software *portable*. 

<!-- Note: today, discuss what it means for software to be portable, 
different types of software and how that impacts their portability -->

<!-- time: 5 min -->
## Motivation

### Running a piece of software is like cooking a meal.  

#### Running on your own computer -> cooking in your own kitchen

* you have all the pots/pans you need
* you know where everything is
* you have access to all the cupboards
* if you're missing something, you can buy it 
and it will still be there next time

## Motivation

### Running a piece of software is like cooking a meal.  

#### Running on the open science grid --> cooking in someone else's kitchen

* everything you need might not be there
* you don't know where everything is
* not everything is accessible to you

## Motivation

#### Software portability --> thinking like a backpacker

* take EVERYTHING you need
* make sure that you can work in a limited amount of space
* clean up after yourself!  

<!-- time: 15 min -->
## Software 

How do we make software portable?  First, we have to understand 
what software is, how it works, and different ways to install it 
and make it run.  

## Compiling 

All software starts as text (code) written by people, which is then translated 
into something the computer understands and can run.  

<img src="img-software/programmer.png" width="150px"> --> 
<img src="img-software/medium_computer-programming-code.jpg" width="150px"> -->
<img src="img-software/binary.jpg" width="150px"> -->
<img src="img-software/desktop-computer10.png" width="150px">

This translation process is called compiling.  

<!-- examples: c, c++, fortran, most of your standard commercial software-->

<!-- this is an aside, could go or be moved elsewhere -->
## Aside: compiled languages

<img src="img-software/programmer.png" width="150px"> --> 
<img src="img-software/medium_computer-programming-code.jpg" width="150px"> -->
BOOK -->
<img src="img-software/desktop-computer10.png" width="150px">

Compilation depends on base operating system and compiler.  

## Aside: interpreted languages

<img src="img-software/programmer.png" width="150px"> --> 
<img src="img-software/medium_computer-programming-code.jpg" width="150px"> -->
BABELFISH -->
<img src="img-software/desktop-computer10.png" width="150px">

Interpretation depends on interpreter installation.  

<!-- Note: the first half of the morning will focus on in the 
second half of the morn -->

## Installing

Installing a piece of software has a few different considerations: 

* where: the location on the computer where the software will be accessed
* how: it is compiled or otherwise placed in that location
* dependencies: the other libraries or programs the software may depend on 
(including features of the base operating system)

Sometimes installation is as simple as compiling; other times it is more complicated.  

<!-- examples: Applications folder (Mac), program_files (windows)
scripts that rely on bash/perl, compiled programs + libraries, etc. -->

## Accessing

Once a piece of software is installed, there will be a primary *executable* which 
needs to be invoked to run the program from the command line.  There are two ways 
to do this: 

* List the full path to the executable
~~~
$ /usr/local/my_software/executable
~~~

* Add the location of the executable to your system PATH.  Then you can run your
software as usual.  
~~~
$ export PATH=/usr/local/my_software:$PATH
$ executable
~~~

<!-- mini exercise: open microsoft word from the command line? -->

<!-- 10 minutes -->
## Portability: Installation

All of the steps of the installation process will determine how 
portable your software is: 
* where: does the software need to be installed to a system location that is only 
accessible to someone with administrative privileges?  Or can 
it be installed to a local directory?  
* how: does the software require a specific compiler?  How is it compiled?  
* dependencies: does the software require other packages/software to be installed?  If so, 
where do those packages need to be?  Will the software run on multiple operating 
systems?  

* (Also, licenses.  Does your software have licensing restrictions?)

<!-- May delete this
## Portability II: Not-interactive

* Code needs to be able to run from the command line
* Need to be able to specify all options up front; even if you need to run multiple 
commands, each command can run from start to end without interaction.  
  -->

## Portability: single executable

If your code can be compiled to a single static binary...

(image) 

You can use that binary as the "executable" for each job.  

## Portability: single executable

* Compile code (or get compiled binary)
* Submit file lines: 
	* executable = compiled_script
	* arguments
	* requirements = LINUX, VER
* Pros: straightforward, one piece of code
* Cons: possibly limited by operating system, if you don't compile yourself, 
the code is a black box

## Portability: installing with a wrapper script

If your code requires more complicated installation, or cannot be compiled to 
a single static binary...

(image of some kind)

You will need to write a wrapper script that installs the software with each 
job.  This wrapper script will be the job's "executable".  

## Portability: installing with a wrapper script

* Wrapper script: typically shell or perl, installs the source code to 
the working directory
* Submit file: 
	* executable = wrapper_script
	* arguments -> must be passed through wrapper to run with code
	* transfer_input_files = source_code.tar.gz
* Pros: lots of flexibility, can run on multiple OS's
* Cons: potential bugs running on different systems

# Exercises

<!-- Need to find/provide: sample executable (and input) that is pre-compiled; 
 simple fortran program, program to compile (cowsay?) 
 -->

## Pre Exercise

* Create a directory called "software portability"
* Create 3 directories within that, one for each exercise, each with a copy of
(`template` submit file?)

## Exercise 1

* Download (program x) from (web address)
* Submit a job running (x)

## Exercise 2

* copy our fortran code into the 2nd directory
* statically compile w/in an interactive job

## Exercise 3

* submit a job w/ code from Exercise 2

## Exercise 4

* live installation (cowsay?), practice w/ interactive job

## Exercise 5

* make a script for installation of 4, submit jobs