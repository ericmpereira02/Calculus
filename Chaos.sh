#!/bin/bash

# CHAOS THEORY COMPUTATION

usage() {
    echo "Chaos.sh 
<integer value of X-naught> 
<precision of X-naught (1 followed by n many zeros)> 
<integer value of min A multiplied by the precision of A> 
<integer value of max A multiplied by the precision of A> 
<precision level of entered A values (1 followed by n many zeros)> 
<precision level of generated X values (number of decimal places)> 
<number of X values to be generated per A value>"
}

# check for valid number of arguments
if [[ "$#" -ne 7 ]]; then
    usage
    exit
fi

xN=$1
precXn=$2
minA=$(($3))
maxA=$(($4))
precA=$5
precX=$6
amt=$7

for ((ii=$(($minA)); $ii<=$maxA; ii++)); do
    ./DogOfX $xN $precXn $ii $amt $precX $precA > prob4/$ii.a
done

