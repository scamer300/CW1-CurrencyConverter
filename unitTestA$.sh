#!/bin/bash
javac CurrencyConverter.java

actual=$(java CurrencyConverter 1 dollars)

if [ -z "$actual" ]; then
   echo "Test failed!"
   printf "No currency value was provided"
   exit 1
else
   echo "Test passed!"
fi


