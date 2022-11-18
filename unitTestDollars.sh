#!/bin/bash

echo "----- INPUT TEST -----"

#variable with a true/false data for comparison
validString=false
validInteger=false

#Regex for String comparison
IFS=" "
regexNumSeq='^[0-9]+([.][0-9]+)?$'

#input variable
input1="1 dollars"
echo "$input1"

#insert inputs into array
read -ra inputArray <<< "$input1"

#split array variables into two seperate variables
currAmount=${inputArray[0]}
currType=${inputArray[1]}

#display seperate variables
echo "Currency Amount: $currAmount"
echo "Currency Type: $currType"

#variable and input comparisons
if [ "$currType" == "dollars" ]
then
    validString=true
else
    validString=false
fi

if ! [[ "$currAmount" =~ $regexNumSeq ]]
then
    validInteger=false
else
    validInteger=true
fi

#Input validation checks
if [ "$validString" == true ]
then
    echo "Currency Type: PASS"
    if [ "$validInteger" == true ]
    	then
    	echo "Currency Amount: PASS"
    	echo "TEST PASSED!"
    else
    	echo "you have not entered a value"
    	echo "Currency Value FAIL"
	echo "TEST FAILED!"
    	exit 1
    fi
else
    echo "Currency Type: FAIL"
    echo "TEST FAILED!"
    exit 1
fi


echo "----- FORMAT TEST -----"

#Regex for String comparison
IFS=" "
regexNumSeq='^[0-9]+([.][0-9]+)?$'

#input variable
input2="10 Dollars"
echo "$input2"

#insert inputs into array
read -ra inputArray <<< "$input2"

#split array variables into two seperate variables
currAmount=${inputArray[0]}
currType=${inputArray[1]}

#display seperate variables
echo "Currency Type: $currType"

#variable and input comparisons
if [ -z "$input2" ]
then
    echo "Input: FAIL"
    echo "No currency value was provided"
    exit 1
else
    echo "Input: PASS"
fi

if [ "$currType" == "dollars" ] || [ "$currType" == "DOLLARS" ] || [ "$currType" == "Dollars" ]
then
    validString=true
else
    validString=false
fi

#Input validation checks
if [ "$validString" == true ]
then
    echo "Currency Type: PASS"
    echo "TEST PASSED!"
else
    echo "Currency Type: FAIL"
    echo "TEST FAILED!"
    echo "Currency must be typed in lower case, upper case or with a capitalised first letter"
    exit 1
fi


echo "----- CURRENCY TEST -----"

#set variable to hold input
input3=$"1 dollars"

#set variable with output from CurrencyConverter file
actual=$(java CurrencyConverter $input3)

#set variable with expected output
expected=$'1.0 Dollars = 0.74 Pounds\n1.0 Dollars = 0.88 Euros\nThank you for using the converter.'

#print expected variable
echo $expected

#Comparison of expected variable and actual variable
if [ "$expected" == "$actual" ]
then
    echo "TEST PASSED!"
    echo $expected
else
    echo "TEST FAILED!"
    echo $actual
    exit 1
fi
