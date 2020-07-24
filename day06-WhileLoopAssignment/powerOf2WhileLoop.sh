#!/bin/bash
read -p "Enter exponent:" exponent
i=0
while [ $exponent -ge 0 ]
do
	if [[ $((2**$i)) -lt 256 ]]
	then
		echo $i $((2**$i))
	else
		break
	fi
	((i++))
	((exponent--))
done

