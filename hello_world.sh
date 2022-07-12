#!/bin/bash


####################################################
# declare a variable
HELLO="Hello"

# use $ to access the variable
echo $HELLO

# use the variable to create another variable
# ${} to access variable within a string
WORLD="${HELLO} World!"
echo $WORLD

# use the variable with another command
# $ to access variable within a string
TIME="$WORLD $(date +%Y-%m-%d)"
echo $TIME


####################################################
# Global vs Local variables
# local is a reserved word

# create function
function bash {
    local WORLD="Hello India!"
    # call local function
    echo $WORLD
}


# call function
bash

# call global function
echo $WORLD


####################################################
# Passing arguments to the bash script

# predefiened variables
echo $1 $2

# use @ to access all arguments at once
echo $@

# use # to access number of arguments
echo $#

# store arguments in function
args=("$@")
echo ${args[0]}


####################################################
# Execute shell commands with bash
# Use $() to create new subshell

echo $(uname)


####################################################
# Read User Input
# read command

echo "Give me a word:"
read word
echo "Got a new word: ${word}"
echo "Got a new word: $word"

# read -a command to get the variables in an array
echo -e "Give me colorList:"
read -a colors
echo ${colors[0]} ${colors[1]}


####################################################
# for loop
for a in `seq 1 10`; do
    echo "$HELLO $a"
    sleep 1;
done


####################################################
# Bash Trap Command
# trap command can be used to catch signals sent to the script
# The script below catches Ctrl + c interrupt

trap bashtrap INT
clear;

bashtrap() {
    echo "CTRL+C Detected......!!!"
}

for a in `seq 1 10`; do
    echo "$a/10 to Exit."
    sleep 1;
done
echo "Exit Bash Trap Example!!!"


####################################################
# Arrays
# Declare simple bash array

# declare array
ARRAY=("ONE" "TWO" "THREE")
# get size
ELEMENTS=${#ARRAY[@]}

for ((i=0; i<$ELEMENTS; i++)); do
    echo ${ARRAY[${i}]}
done


####################################################
# Read file into bash array
# Declare array
declare -a ARRAY
# Link filedescriptor 10 with stdin
# #fileReader
exec 10<&0
# stdin replaced with a file supplied as a first argument
exec < $1
let count=0

while read LINE; do

    ARRAY[$count]=$LINE
    ((count++))
done

echo Number of elements: ${#ARRAY[@]}
# echo array's content
echo ${ARRAY[@]}
# restore stdin from filedescriptor 10
# and close filedescriptor 10
exec 0<&10 10<&-


####################################################
# Conditions
#
# if [ condition ]; then
#     echo "something"
# else
#     echo "something else"
# fi
#

directory="/bin/"
if [ -d $directory]; then
    echo "Exists"
else
    echo "Does Not"
fi


####################################################
# Bash Comparisons
## Arithmetic Comparisons
# -lt     <
# -gt     >
# -le     <=
# -ge     >=
# -eq     ==
# -ne     !=

## String Comparisons

# =        equal
# !=       not equal
# <        less than
# >        greater than
# -n s1    string s1 is not empty
# -z s1    string s1 is empty

# Bash file testing
# In bash, we can test to see different characteristics about a file
# or directory.


####################################################
# For loop
for ((i = 0; i < 10; i++)); do
    echo "$i"
done

# for in
for VAR in LIST
do
    echo "$VAR"
done

# while
while [[ condition ]]; do

done

# until
until [[ condition ]]; do

done


####################################################
# Bash function
# Bash functions can be declared in any order

function A()
{
    echo B
}
function B()
{
    echo $1
}

B

# or use it without a function keyword
A() {

}
A


####################################################
# Select
# #util

select word in "linux" "bash" "script"
do
    echo  "The word you have selected is: $word"
    break
done


####################################################
# Case statement
# case "$VAR" in
#     1) echo 1
#     ;;
#     2|3) echo 2 or 3
#     ;;
#     *) echo default
#     ;;
# esac

case $user in
    1) echo "User is number ONE";;
    2) echo "User is number TWO";;
    3) echo "User is NOT on top";;
    4) exit
esac


####################################################
# Bash Quotes and quotations
# use \ to escape characters
# others with ' "
echo \$VAR


####################################################
# Bash Arithmetic
# using let

let RESULT=$1+$2


####################################################
# Redirections

# STDOUT from bash script to STDERR
# 1 and 2 have special meaning in bash

echo "Redirect this STDOUT to STDERR" 1>&2

# STDOUT to a file
touch file1
ls file1 > STDOUT
cat STDOUT
file1

# STDERR to file

ls file1 file2 2> STDERR
file1
cat STDERR
# ls: cannot access file2: No such file or directory


