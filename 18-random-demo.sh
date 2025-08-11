#!/bin/bash

#Generates a random number between 0 and 32767
echo "Random Number: $RANDOM"

#Generate a random number between 1 and 10
echo "Random Number Between 1 to 10: $(( $RANDOM % 10 + 1  ))"

#Simulate rolling two dice
dice1=$(( $RANDOM % 6 + 1))
dice2=$(( $RANDOM % 6 + 1 ))
echo "Dice1 :$dice1, Dice2 :$dice2"

#Pick a random item from a list
fruits=("Apple" "Orange" "Banana" "Qivi")
index=$(( $RANDOM % ${#fruits[@]}))
echo "Random fruit: ${fruits[$index]}"

