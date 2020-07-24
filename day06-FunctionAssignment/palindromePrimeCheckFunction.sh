#!/bin/bash -x

function checkPalindrome()
{
	number=$1
	reverse=0
	n=$1
	while [ $n -gt 0 ]
	do
		a=`expr $n % 10 `
		n=`expr $n / 10 `
		reverse=`expr $reverse \* 10 + $a`
	done
	echo $reverse
}

function checkPrime()
{
	flag=0
	for(( i=2; i<=$(($1/2)); i++ ))
	do
        if [ $(( $1%$i )) -eq 0 ]
        then
                flag=1
                break
        fi
	done
	if [ $1 -eq 1 ]
	then
        echo "1 is neither prime not composite!";
	elif [ $flag -eq 1 ]
	then
        echo $1" is not a prime number";
	else
        echo true
	fi
}

read -p "Enter number to check: " num
res="$(checkPrime $(( $num )))"
if [[ $res ]]
then
	checkReversePalindrome="$( checkPalindrome $(( $num )))"
	res="$(checkPrime $(( $checkReversePalindrome )))"
	if [[ $res -eq true ]]
	then
		echo $checkReversePalindrome" is a Prime number!"
	else
		echo $res;
	fi
fi
