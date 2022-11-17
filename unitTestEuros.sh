#!/bin/bash
javac CurrencyConverter.java

actual=$(java CurrencyConverter 1 euros)
expected=$'1.0 Euros =  1.13 Dollars\n1.0 Euros = 0.84 Pounds\nThank you for using the converter.'

echo $actual
echo "$expected"

if [ "$expected" == "$actual" ]; then
    echo "Test passed!"
else
    echo "Test failed!"
fi
