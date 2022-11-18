#!/bin/bash
javac CurrencyConverter.java

input=$'1 dollars'
actual=$(java CurrencyConverter input)
expected=$'1.0 Dollars = 0.74 Pounds\n1.0 Dollars = 0.88 Euros\nThank you for using the converter.'

if [ "$expected" == "$actual" ]; then
    echo "Test passed!"
else
    echo "Test failed!"
    exit 1
fi
