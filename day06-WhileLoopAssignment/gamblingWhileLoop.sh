#!/bin/bash -x
amountLeft=100
noOfWins=0
noOfBetsMade=0
while [[ $amountLeft -gt 0 && $amountLeft -lt 200 ]]
do
	betRandomCheck=$(( RANDOM%2 ))
	(( noOfBetsMade++ ))
	if [ $betRandomCheck -eq 1 ]
	then
		echo "Bet Won!"
		(( amountLeft++ ))
		(( noOfWins++ ))
	else
		echo "Bet Lost!"
		(( amountLeft-- ))
	fi
done

#echo "Total number of Bets won: "$noOfWins
#echo "Total number of Bets: "$noOfBetsMade
