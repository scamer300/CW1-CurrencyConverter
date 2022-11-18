#!/bin/bash

echo "----- INPUT TEST -----"

textValid=false
valueValid=false

IFS=" "
regexNumSeq='^[0-9]+([.][0-9]+)?$'

input1="1 dollars"
echo "$input1"

read -ra inputArray1 <<< "$input1"

currencyValue=${inputArray1[0]}
currencyText=${inputArray1[1]}

echo "currencyValue: $currencyValue"
echo "currencyText: $currencyText"

if ! [[ "$currencyValue" =~ $regexNumSeq ]]
then
    valueValid=false
else
    valueValid=true
fi

if [ "currencyText" == "dollars" ]
then
    textValid=true
else
    textValid=false
fi

if [ "$textValid == true ]
then
    echo "Currency Type Pass"
    if [ "$valueValid" == true ]
    	then
    	echo "Currency Value PASS"
    	output1=$(java CurrencyConverter $input1)
    	echo "$output1"
    else
    	echo "you have not entered a value"
    	echo "Currency Value FAIL"
    fi
else
    echo "Currency Type FAIL"
fi


echo "----- FORMAT TEST -----"






echo "----- CURRENCY TEST -----"

input3=$"1 dollars"
actual=$(java CurrencyConverter $input3)
expected=$'1.0 Dollars = 0.74 Pounds\n1.0 Dollars = 0.88 Euros\nThank you for using the converter.'

echo $expected

if [ "$expected" == "$actual" ]; then
    echo "Test passed!"
    echo $expected
else
    echo "Test failed!"
    echo $actual
    exit 1
fi
