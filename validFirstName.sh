#!/bin/bash -x

read -p "Enter FirstName " firstname;

regex=^[A-Z][a-z]{2}

if [[ $firstname =~ $regex ]]
then
	echo "Valid Name"
else
	echo "Not a valid Name"
fi
