#!/bin/bash


echo "-------------script 1-------------------"

DATE=$(date +%F)  # Outputs the date in YYYY-MM-DD format (e.g., 2025-06-22).
echo "Todays date is $DATE"


echo "-------------script 2-------------------"

# Add Numbers Passed via Command Line

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))
echo "Total is $SUM"


echo "-------------script 3-------------------"

echo "enter user name:"
read USERNAME
echo "user is $USERNAME"

echo "enter password"
read -s PASSWORD   # -s: Suppresses the input being displayed on the terminal (useful for passwords).
echo "Password is: $PASSWORD"  # printing passwords is  not Recommended


echo "-------------script 4-------------------"

# index starts from 0, size is 3

FRUITS=("APPLE" "KIWI" "ORANGE")

echo "First fruit is ${FRUITS[0]}"
echo "Second fruit is ${FRUITS[1]}"
echo "Third fruit is ${FRUIT[2]}"

echo "Fruits are ${FRUITS[@]}"


echo "-------------script 5-------------------"

# special variables

echo "All variables passed to script: $@"
echo "Number of variables passed: $#"
echo "script name: $0"
echo "Current working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "PID pf the script executing now: $$"
sleep 100 &
echo "PID of the last background command: $!"
