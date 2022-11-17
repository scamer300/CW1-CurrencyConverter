#!/bin/bash

output=$(java CurrencyConverter 50 dollars)

if [[ $# -gt 0 ]]
  then echo Arguments were provided.
  else echo No arguments were provided.
fi
