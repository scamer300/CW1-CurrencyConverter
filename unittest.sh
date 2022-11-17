#!/bin/bash

output=$(java CurrencyConverter 1 dollars)
expected="1.0 Dollars = 0.74 Pounds \n1.0 Dollars = 0.88 Euros \nThank you for using the converter."


if [ "output" == "expected" ]; then
    echo "Test passed!"
else
    echo "Test failed"
    exit 1
fi
