#!/bin/bash

ARGS_NUMBER=$#

echo "***"
echo "Current processID: $$" 
echo "---"

if [ $ARGS_NUMBER = 0 ]
then
    echo "No arguments were passed to $0"
    echo "Expected:"
    echo "  $0 star [...args]"
    echo "  $0 at [...args]" 
    echo "  $0 bang" 
    echo "  $0 error"
elif [ $1 = "star" ]
then
    echo 'These are the arguments in "$*"'
    echo "Number of arguments: $#"
    for arg in "$*"; do echo "$arg"; done
elif [ $1 = "at" ]
then
    echo 'These are the arguments in "$@"'
    echo "Number of arguments: $#"
    for arg in "$@"; do echo "$arg"; done
elif [ $1 = "bang" ]
then
    echo "The last PID of a background process was: $!"
elif [ $1 = "error" ]
then
    cp 2>/dev/null
    echo "WARNING: Command cp threw an error: $?"
else
    echo "Invalid option '$1o'"
    echo "Run '$0' to get help"
fi 

echo
echo "***"
