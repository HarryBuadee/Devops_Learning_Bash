#!/bin/bash

#Create a script that takes two numbers as input and performs basic arithmetic operations (addition, subtraction, multiplication, division).

#Requirements:
#Prompt user for two numbers
#Perform all four operations
#Display the results
#Handle division by zero

read -p "Enter first number: " num1
read -p "Enter second number: " num2

# Input validation
if ! [[ "$num1" =~ ^-?[0-9]+$ ]]; then
    echo "Error: First input is not a valid number."
    exit 1
fi

if ! [[ "$num2" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Second input is not a valid number."
    exit 1
fi

# Operators in action
addition=$((num1 + num2))
subtraction=$((num1 - num2))
multiplication=$((num1 * num2))

echo
echo "Results:"
echo "$num1 + $num2 = $addition"
echo "$num1 - $num2 = $subtraction"
echo "$num1 * $num2 = $multiplication"

# Division with zero check
if [ "$num2" -eq 0 ]; then
    echo "Division: Error (division by zero)"
else
    division=$((num1 / num2))
    echo "$num1 / $num2 = $division"
fi

