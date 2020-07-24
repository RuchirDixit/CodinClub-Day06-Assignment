#!/bin/bash -x
read -p "Enter any number between 1-100" userInputNumber
if [[ $userInputNumber -lt 1 || $userInputNumber -gt 100 ]]
then
	echo "Incorrect input. Run again."
else
	start=1
	end=100
	mid=50
	while [[ $userInputNumber -ne $mid ]]
	do
		echo "Number is greater than or less than " $mid" (use g or l):"
		read pos
		if [ $pos == "g" ]
		then
			start=$mid
			mid=$(( (($start+$end)) / 2))
		else
			end=$mid
			mid=$(( (($start+$end)) / 2 ))
		fi
	done
	echo "Number "$mid" found!"
fi

