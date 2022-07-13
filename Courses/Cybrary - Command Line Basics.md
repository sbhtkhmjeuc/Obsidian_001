# Cybrary - Command Line Basics

Last modified: May 11, 2022 2:55 PM
Priority: Not important
Progress: Done
Subject: CMD, Cybersecurity, Malware Analysis

Command Line Basics Sheet

SANS Cheat Sheet

<aside>
💡 In Linux if you have to run two or more switches that not accepts any parameters you can write them connected after the `-`

</aside>

## How To Ask for Help

by typing `help` in the terminal you’ll get a help manual for the whole terminal.

to get a help for each command you need to type

Linux - `--help` / `-h` / `-?`

Windows - `/help` / `/?`

if you want more of details about a command in Linux you can type `man COMMAND`, that will give you a man page of this command.

  

# Commands

## CMD Survival

### Important Commands

- `pwd` - Shows the current directory you are working on.
- `dir` / `ls`- List all of the files in the pwd.
- `cd` - used to move to different folders.

**Use Tab Completion** 

### Command History

Windows - `F7`

Linux - `./bash_history`

### Control Keys

`Ctrl + C` - interrupting a process

`Ctrl + Z` - Pause the running process / moves the command into the fg log.

`cls` / `Ctrl + L` - Clears the screen

## Navigation Directories

`mkdir` - make directory

`cd FOLDER / PATH` - change directory

`cd ..` - goes back a directory

`cd /d` - changes the drive (**Windows Only**) 

`tree` - shows a graphical display folder structure of all of the file in this directory. You can add the `more` command and go trough all of the file one by one. 

  

## Common Tools - Linux

`cat` -  Concatenate, spits out all of the text of file (**can be used with multiple files**)

`more` - spits out a text from a text file (**can’t be run with multiple files**). You can’t go up in `more` once you got down.

`less` - just like more but enabling to scroll through the text unlike that `more` command.

`cp` - copy (`-R` recursively copying) 

Example `cp words.txt ~/Desktop/`

`mv` - move

you can rename files by moving them to same space with a different name, Example `mv words.txt new_name.txt` .

`rm` - removing file

`-r` for recursive

`-f` with force

`grep` - searching trough text  (`grep WORD FILE.txt`) can use to search with binary files and pipe command,

 

## Common Tools - Windows

`type` - displays the content of a file

`more` - display one screen at a time

`copy` 

`move`

`rename`

`del` - deleting files

`erase` - same as `del`

`find` - search for a string

`findstr` -  more robust, can use regex  

Copying Selection -  `Ctrl + M` and `Enter`.

# Command Basics - Linux

## Basics

`ls` - list the contents of a directory

`-l` - shows that permission and dates

`-a` - all. display hidden files 

`locate NAME` - helps to locate a file on the file system 

`updatedb` - updating the indexing system to index new created files (**have to be root**)

`nano FILE` - basic text editor (will create a new file if not exist)

`sudo` - run command as root (the Administrator of the system) 

## Files

`touch` - update a modification time in linux shell and create files when the file isn’t exist.

![Untitled](Cybrary%20-%20Command%20Line%20Basics%20930ffe8a3b0a48b3839377b0e63ef5f5/Untitled.png)

`chmod` - changes the file mode bits

`chown` - change the file ownership

`find` - searches trough all of the file system

Example `find / -name file_name`

`sort`

`uniq` - removes duplicates (`-c` the get the amount of words in a file), **has to work after `sort` has been executed.** 

`sed` - stream editor, used to make changes to a stream of text

`s/old/new/g` - search for the word “old” and replace it with “new”,  globally (all over the file, with out `g` it would perform only once).

Hashing - one-way algorithm

Encoding - changes plain-text, can be reverse-able

`base64` - encoding text into a base 64, use with a line pipe. (`-d` for decode)

Example : `echo “this is my encoding string!” | base64`

`md5sum` - hashing a file / sentence with MD5 

`sha1sum` 

`sha256sum`

## System

`sudo` - “super do” , run a command as root

`apt-get` - install new packages to the machine

`apt list [search]` / `apt search [search]`

`whoami` - returns the current user used

`uname` - display linux properties (`-a` all )

`id` - print the user & group info

`last` - shows the users that last logged in and what they used

`ps` - displays only current user processes by default (`aux` show all of the process from all of the users)

`kill` - end a running process (need to add the PID (process ID)), the root can kill other users process

 

## Networking

`ifconfig` - returns the net configuration. 

`ifconfig [interface] add [ip address]` - sets up new IP address on the interface

`ifconfig [interface] down` - disables a networking interface

`netstat` - shows open network connections (`-r` show routing table)

`lsof` - list open file

`telnet` - used to remotely connect to a terminal in another machine, **Has NO ENCRYPTION**

`ssh` - secure shell, encrypts terminal sessions.

`nc` - NetCat, easy to set up connection between two computers, `nc -lp [port]` to listen, **used a lot in malware**

`nc [ip address] [port]` - connect into another computer

# Command Basics - Windows

## Files

`echo` - returns info to the terminal, very usable with variables, Example : `echo %date%` - returns the date.

`icacls` - integrity control access control lists, change file permissions, add or remove file inheritance.

Example : `icacls [file] / grant [user]:[permission]` 

`fc` - File Compare 

`xcopy` - copies files and directories trees

`robocopy` - supports logging mirroring and purging, selects only changed files. (Read More)

## System

`systeminfo` - displays info about the computer (computer name, patch level, CPU/GPU, domain BIOS, last boot time)(Read More)

`date` 

`time` 

`whoami` - display the computer name and the current user.

`doskey /history` - command history

`tasklist` - display all of the running processes (PID, Memory Usage)

`taskkill` - can be uses PID

Example : `taskkill /pid [number]`

`sc` - service control, interacts with the service control manager, Actions : Query, start, pause,strop services

Example : `sc [action] [service_name]` 

`fsutil` - file system utilities, repair, NTFS, USN and to change the dirty bit (Read More)

`sfc` - system file check, especially for the Windows OS Files (Read More)

`chkdsk` - check disk (Read More)

## Networking

`ipconfig` - internet protocol configuration

`getmac` - get MAC Address

`nslookup` - name service lookup, submit DNS Requests, choose DNS server

`ping` - check to validate connectivity

`tracert` - like the `ping` command but list all of the stops in the way from the sending computer to the destination.

`arp` - Address Resolution Protocol (`-a` shows the arp cache)

`netstats` - Network Statistics

`ftp` - file transfer protocol, **Insecure.** (Read More)

`ssh` - secure shell, 

## Net Commands

`net` - very strong command

example : `net use [username] [password]`

adding groups : `net group [groupname]`

adding users : `/add [username]`

deleting username : `/delete [username]`

starting service : `net start [service]`

stopping service : `net stop [service]`

attach and remove remote file shares : example : `net use K: \\ chris-leptop\D$`  (Read More)

# Advanced Command Line Techniques

## Advances Piping and Ampersands

`|` - Single Pipe, takes the output from the first command and send int as input to the second command.

`||` - Double Pipe, The second command will run **ONLY IF** the first command fails to run.   

`&` - to run multiple commands in one line. (**Windows**)

`&` - to run a program in the background, which gives the control back to the user unlike regular running when the terminal goes back to the users control when the program is over. (**Linux**)

`&&` - will execute the second command only if the first command was successful. 

## Command Re-Direction

`>` - used to place output in to a file, will create a new file if it does not exist and if does it will OVERRIDE it.

Example : `echo “Hello World!” > hello.txt`

`>>` - set output in a file, will create a file if it’s not exist, will APPEND to an existing file. 

`<` -  provide a file as an input for a command.

Example : `sort < file.txt`

Redirecting stderr - moves all of the error in to a `/dev/null` basically deleting it.

Example : `grep -ri myprogram / 2> /dev/null`

## Loops

### Linux Loops

while - `while true; do echo “running”; done`

for - `for i in {1..5}; do echo $i; done`

file loops - `for i in $(cat words.txt);do echo $i; done`

### Windows Loops

for  - `/L` for a list of numbers, `/F` for file input.

`%[latter]` - defining parameters

examples : 

`for /L %G in (1,1,15) do echo %G`

`for /F %G in (words.txt) do echo %G`

while - the same as for but in stand of setting a number to stop on, you don’t set a number and is runs forever. 

Example : `for /l %G in () do echo “oops!”` 

## Linux Shell Scripting

used to automate processes, like loops.

every time you write a shell script you need to write `#!bin/bash`, that tells to the linux which interpreter to use on this file. 

to command to run the file is : `./[file name].txt`

you might need to change the permission to execute, which you can with `chmod`.

## Windows Batch Scripting

`:[label]` - creating a label in code

`goto [label]` - will jump to the line in the code where the label is. (Read More)