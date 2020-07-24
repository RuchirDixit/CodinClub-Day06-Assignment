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
if [ $number -eq $reverse ]
then
    echo "Number is palindrome"
else
	echo "Number is not palindrome"
fi
}

echo "Enter the number"
read n
checkPalindrome $(( $n ))

