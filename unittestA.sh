#!/bin/bash
javac CurrencyConverter.java

actual=$(java CurrencyConverter)

echo $actual

if [ -z "$actual" ]; then
   echo "No arguments were provided"
else
   echo "Expected output is not empty"
fi
