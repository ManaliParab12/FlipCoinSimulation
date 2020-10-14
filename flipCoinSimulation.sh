#!/bin/bash -x

echo "Welcome to Flip Coin Simulation"
heads=0
tails=0

for (( i=1; i<=20; i++ ))
do

    coin=$((RANDOM%2))

    if [ $coin -eq 1 ]
    then
        heads=$(($heads+1))
    else
        tails=$(($tails+1))
    fi
done

echo "Number of times heads won " $heads
echo "Number of times Tails won " $tails
