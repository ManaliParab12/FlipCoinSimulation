#!/bin/bash -x

echo "Welcome to Flip Coin Simulation"
heads=0
tails=0

while [ $heads -lt 21 ] && [ $tails -lt 21 ]
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



if [ $heads -eq 21 ] && [ $tails -eq 21 ]
then
    if [ $heads -eq 21 ]
    then
        while [ $(($heads-$tails)) -gt 2 ]
        do
          tails=$(($tails+1))
        done

        while [ $(($tails-$heads)) -gt 2 ]
        do
          heads=$(($heads+1))
       done
    fi
elif [ $heads -eq 21 ]
then
    w=$(($heads-$tails))
    echo "heads won by" $w
else
    w=$(($tails-$heads))
    echo "Tails won by" $w
fi

