#!/bin/bash
javac CurrencyConverter.java

actual=$(java CurrencyConverter 1 pounds)
expected=$'1.0 Pounds = 1.36 Dollars\n1.0 Pounds = 1.19 Euros\nThank you for using the converter.'

echo $actual
echo "$expected"

if [ "$expected" == "$actual" ]; then
    echo "Test passed!"
else
    echo "Test failed!"
    exit 1
fi
