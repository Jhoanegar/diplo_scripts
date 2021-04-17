#!/bin/bash

if [ $# -lt 1 ]
then
    echo "ERROR: Missing ext name"
    echo "Try: "
    echo "  $0 txt"
    exit 1 
elif [ $# -gt 1 ]
then
    echo "ERROR: Only one ext name suppported"
    echo "Try: "
    echo "  $0 txt"
    exit 2
fi

results=`find . -name "*.$1"`

for result in $results
do
  echo "$result `date +%H:%M:%S-%d-%Y`" >> "results_$1.txt"
done
