#!/bin/bash -x

echo "Welcome to Flip Coin Simulation"

coin=$((RANDOM%2))

if [ $coin -eq 1 ]
then
    echo "You got Heads"
else
    echo "You got Tails"
fi

