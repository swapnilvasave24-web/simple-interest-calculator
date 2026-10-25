#!/bin/bash

# Simple Interest Calculator

echo "Simple Interest Calculator"

read -p "Enter principal amount: " principal
read -p "Enter annual rate of interest (%): " rate
read -p "Enter time period (in years): " time

# Calculate simple interest using the formula (P * R * T) / 100
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate total amount
amount=$(echo "scale=2; $principal + $interest" | bc)

echo "-----------------------------"
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $interest"
echo "Total Amount: $amount"
echo "-----------------------------"
