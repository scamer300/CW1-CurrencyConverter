#!/bin/bash
javac CurrencyConverter.java

input=$'1 pounds'
actual=$(java CurrencyConverter $input)

if [ -z "$actual" ]; then
   echo "Test failed!"
   printf "No currency value was provided"
   exit 1
else
   echo "Test passed!"
fi


