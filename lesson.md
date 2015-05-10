# An Introduction to High Throughput Computing using HTCondor

## Getting Started

* Log in to the submit node

~~~
$ ssh <netid>@submit-x.chtc.wisc.edu
~~~

* Get the materials for this tutorial

~~~
$ git clone https://github.com/CHTC/htc-intro.git
$ cd htc-intro.git
~~~

* Look at the files

~~~
$ ls
$ less basic.submit
~~~

Type `q` to exit the `less` program.  

## Scripts and Science

This directory should contain a script called `print_msg.sh`.  
It takes in any text as an argument and prints a greeting to file.  

> Try it
>
> Try running `print_msg` with a message of your choice.  What is the output?  

Most computational tasks in science can be reduced to this simple paradigm of 
input/arguments -> program -> output.  We will later refer to this chain as a "job".  

> Discussion
>
> What does your computational task look like?  What are the input and output?  

## For Loops

What if I wanted to run this script multiple times, to print many messages?  

The typical way to do this is the programming construct called a for loop.  

> Try it
> ~~~
> for num in {0..4}
> do
> 	./print_msg $num
> done
> ~~~

> Discussion
>
> What factors would make running this kind of loop impractical?

Running a for loop on your computer means that you are only using one processor.  

> image here

## High Throughput Computing

High throughput computing is a way of changing the for loop so that each task, or 
*job*, can each be run separately on its own processor, instead of all in a row 
on one processor.  Graphically, that looks like this: 

> image here

In code, we want a for loop that does this:
~~~
for num in {0..4}
	queue a job that runs
	print_msg $num
~~~

This kind of loop can be implemented in a specific kind of file, called a *submit file*, 
which is given to 
a program called a *scheduler*.  The *submit file* contains instructions for the loop,
and the *scheduler* reads it and then will create the jobs described in the loop, and 
assign them to processors in its *pool* of computers.  

## Submit File Basics

### Numerical arguments: 

Suppose I want to loop through the numbers 0-4 and print a message with each number, 
like this: 

~~~
for num in 0..4
	print_msg num
~~~

To treat each step of the loop as a separate job, assigned to a different machine, 
I would use the following lines in a submit file:

~~~
executable = print_msg
arguments = $(Process)

queue 5
~~~

The `queue` keyword will generate a certain number of jobs (5, in this case) and 
the `$(Process)` is a special variable that iterates from zero to N-1 (here, from 0 
to 4), creating a job for each process number.  

> Try it
>
> Fill out the executable and argument lines in `basic.submit`.  Then change the 
> `queue` statement to run 5 jobs.  


### What if your arguments aren't numbers?  

Suppose instead of printing numbered messages, I want to print a message to every 
person listed in the `names.txt` file.  So I want the behavior of:

~~~
for name in names.txt
	print_msg name
~~~

In a submit file, the syntax for this looks something like this: 
~~~
executable = print_msg
arguments = $(name)

queue name from names.txt
~~~

> Try it
>
> Make a copy of `basic.submit` called `names.submit`.
> Change the appropriate lines in `names.submit` to reflect the code above.  


## Submitting and Managing HTCondor Jobs

Now that we have moved our multiple tasks into a submit file, we can submit them 
to Condor and let it run them for us.  

### Condor commands

* Submit a job: `condor_submit <submit_file>`
* Look at jobs in the queue: `condor_q <netid>`
	* The left-hand column indicates the `JobId` (cluster and process number).  The 
	state has 3 main options: `I` for idle, `R` for running and `H` for held.  
	* `condor_q` has lots of options.  You can use `condor_q -l <JobId>` to look 
	at information about a specific job, or `condor_q -hold` to see why your jobs 
	are on hold.  See the [Manual Page](http://research.cs.wisc.edu/htcondor/manual/current/condor_q.html) for more information.  
* Remove jobs from the queue: `condor_rm <netid>` or `<condorm_rm <JobId>`

## Side Note: Directory Organization I

> talk about organizing files, paths, etc.

## Input Files

What if the difference between jobs is not an argument passed to the script, but an input file?  
Like before, our submit file will tell HTCondor about our different input files, and we have multiple 
options for doing so.  

### Numerically-named input files

> use $(Process) in transfer_input_files

### List of files with common prefix or extension

> use queue file matching *glob

## Side Note: Directory Organization II

> input/output files, initialdir
