#!/bin/bash
# Write a script that creates a directory, navigates into it, creates a file inside it, writes some text to the file, and then displays the contents of the file. 

mkdir bash_demo
cd bash_demo
touch demo.txt
echo "Hello, this file was created by a Bash script." > demo.txt
cat demo.txt
