# "Backpacking with Code"
## Running software on the Open Science Grid (or anywhere!)

<!-- cut this?  
## What is Software?

* Software (aka programs, code, scripts) are all different forms of 
providing *instructions* to a computer.
* Running a piece of software *depends* on many factors: compilation, 
libraries/packages, base operating system, etc.
* To run software in OSG (or any distributed system), one must consider 
these factors and make the software *portable*. 
-->

<!-- Note: today, discuss what it means for software to be portable, 
different types of software and how that impacts their portability -->

## Cooking analogy

### Running a piece of software is like cooking a meal.  

#### Running on your own computer -> cooking in your own kitchen

* you have all the pots/pans you need
* you know where everything is
* you have access to all the cupboards
* if you're missing something, you can buy it 
and it will still be there next time

## Cooking analogy

### Running a piece of software is like cooking a meal.  

#### Running on the open science grid --> cooking in someone else's kitchen

* everything you need might not be there
* you don't know where everything is
* not everything is accessible to you

## Cooking analogy

#### Software portability --> thinking like a backpacker

* take EVERYTHING you need
* make sure that you can work in a limited amount of space
* clean up after yourself!  

## Software 

How do we make software portable?  First, we have to understand 
what software is, how it works, and different ways to install it 
and make it run.  

## Software 

All software starts as text (code) written by people, which is then translated 
into something the computer understands and can run.  

<img src="img-software/programmer.png" width="200px"> --> 
<img src="img-software/medium_computer-programming-code.jpg" width="200px"> -->
<img src="img-software/binary.jpg" width="200px"> -->
<img src="img-software/desktop-computer10.png" width="200px"> -->

This translation process is called compiling and will impact how to package 
your code to make it portable.  

## Compiling vs Installing

### What is the difference?

![people](img-software/programmer.png) ->
![code](img-software/medium_computer-programming-code.jpg) ->
![bytecode](img-software/binary.jpg) + links ->
![computer](img-software/desktop-computer10.png)

## Compiling: pre-compiled


![people](img-software/programmer.png) ->
![code](img-software/medium_computer-programming-code.jpg) ->
![bytecode](img-software/binary.jpg) + links ->
![computer](img-software/desktop-computer10.png)

## Compiling: dynamically

people -> code -> babelfish -> computer

<!-- Note: the first half of the morning will focus on pre-compiled programs, 
we'll talk about dynamic programs (python, R) in the second half of the morn -->

## Static compiling

![people](img-software/programmer.png) ->
![code](img-software/medium_computer-programming-code.jpg) ->
![bytecode](img-software/binary.jpg) + links ->
![computer](img-software/desktop-computer10.png)

## Linked compiling

![people](img-software/programmer.png) ->
![code](img-software/medium_computer-programming-code.jpg) ->
![bytecode](img-software/binary.jpg) + links ->
![computer](img-software/desktop-computer10.png)

## Portability of static programs



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
* statically compile
* submit a job

## Exercise 3

* cowsay?  