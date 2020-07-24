#!/bin/bash
CELSIUS_TO_FAHREN=1
FAHREN_TO_CELSIUS=2

function degreeConvertor()
{
	case $1 in
		$CELSIUS_TO_FAHREN )
					if [[ $2 -ge 0 && $2 -le 100 ]]
					then
						cal=`echo $2 1.8| awk '{print $1*$2}'`;
						echo $cal 32 | awk '{print $1+$2}';
					else
						echo "Incorrect Input"
					fi
					;;
		$FAHREN_TO_CELSIUS )
					if [[ $2 -ge 32 && $2 -le 212 ]]
               then
						cal=$(( $2-32 ))
                  echo $cal 0.55| awk '{print $1*$2}';
               else
                  echo "Incorrect Input"
               fi
					;;
	esac
}

echo "1. Celsius to Fahrenheit"
echo "2. Fahrenheit to Celsius"
echo "Select any one option: "
read optionSelected
read -p "Enter temp to convert:" temp
resultConversion="$( degreeConvertor $(( $optionSelected )) $(( $temp )) )"
echo "Result after conversion is: "$resultConversion
