#!/bin/bash
javac CurrencyConverter.java

actual=$(java CurrencyConverter 1 dollars)
expected="1.0 Dollars = 0.74 Pounds 1.0 Dollars = 0.88 Euros Thank you for using the converter."

echo $actual
echo $expected

if [[ $expected > $actual ]]; then
    echo "Expected is larger"
else
    echo "Expected is smaller"

if [ "$expected" == "$actual" ]; then
    echo "Test passed!"
else
    echo "Test failed!"
    exit 1
fi
