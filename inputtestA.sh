#!/bin/bash

var1Valid=false
var2Valid=false

IFS=" "
regexNumSeq='^[0-9]+([.][0-9]+)?$'

input="1 dollars"

read -ra inputArray <<< "$input"

currValue=${inputArray[0]}
currText=${inputArray[1]}

echo "currValue: $currValue"
echo "currText: $currText"



if [[ "$currValue" =~ ^[0-9]+$ ]]
   echo "Value provided is a number"
   var1Valid=true
else
   echo "Value is not a number"
   var1Valid=false
fi


if [ "$currText" == "dollar" ]
   echo "Currency text matches input format"
   var2Valid=true
else
   echo "Currency is invalid"
   var2Valid=false
fi


if [ "$var1Valid" == true ]; then
   if [ "var2Valid" == true ]; then
	java CurrencyConverter 1 dollars
else
    echo "Currency value is not a number, you entered: $currValue"
    else
	echo "Currency text is invalid, you entered: $currText"
fi
