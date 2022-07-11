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

directory="/bin/"
if [ -d $directory]; then
    echo "Exists"
else 
    echo "Does Not"
fi


####################################################
# Bash Comparisons
# Arithmetic Comparisons

-lt <
-gt >
-le <=
-ge >=
-eq ==
-ne !=
 

