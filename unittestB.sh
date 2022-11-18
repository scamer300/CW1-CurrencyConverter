#!/bin/bash
javac CurrencyConverter.java

input=$'1 DOLLARS'
actual=$(java CurrencyConverter $input | tr '[:upper:]' '[:lower:]')

if [ -z "$actual" ]; then
   echo "Test failed!"
   printf "No currency value was provided"
   exit 1
else
   echo "Test passed!"
fi
