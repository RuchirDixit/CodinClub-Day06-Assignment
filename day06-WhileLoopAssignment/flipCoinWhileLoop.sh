#!/bin/bash -x

heads=0
tails=0
while [[ $heads -lt 11 && $tails -lt 11 ]]
do
	chance=$(( RANDOM%2 ))
	if [ $chance -eq 1 ]
	then
		echo "Heads!"
		$((heads++))
	else
		echo "Tails"
		$((tails++))
	fi
done
echo "Heads: "$heads
echo "Tails: "$tails
