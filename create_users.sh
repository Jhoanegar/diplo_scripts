#!/bin/bash

if [ $# -lt 1 ]
then
    echo "ERROR: Missing input file"
    echo "Try: "
    echo "  $0 input.csv"
    exit 1 
elif [ $# -gt 1 ]
then
    echo "ERROR: Only one input file is suppported"
    echo "Try: "
    echo "  $0 input.csv"
    exit 2
fi

users=`cat $1`

for user in ${users//,/ }
do
    echo "Creating user $user..."
    `adduser $user -p diplomado12`
    `passwd --expire $user`
    echo "Done!"
done
