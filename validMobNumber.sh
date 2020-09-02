#!/bin/bash -x

read -p "Enter Mobile number with country code " number;

regex=^[9][1][6-9]{1}[0-9]{9}

if [[ $number =~ $regex ]]
then
	echo "Valid Number"
else
	echo "Not a valid Number"
fi
