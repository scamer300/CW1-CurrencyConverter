#!/bin/bash
javac CurrencyConverter.java

actual=$(java CurrencyConverter 1 dollars)

if [ -z "$actual" ]; then
   echo "No arguments were provided"
   exit 1
else
   echo "Arguments were provided"
fi
