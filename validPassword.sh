#!/bin/bash -x

read -p "Enter password" pass;

regex=[A-Za-z0-9]{8,}

if [[ $pass =~ $regex ]]
then
	echo "Valid Password"
else
	echo "Not a valid Password"
fi
