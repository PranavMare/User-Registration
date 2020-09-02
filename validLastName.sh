#!/bin/bash -x

read -p "Enter FirstName " firstname;
read -p "Enter LastName " lastname;

regex=^[A-Z][a-z]{2}

if [[ $firstname =~ $regex ]]
then
	echo "Valid First Name"
else
	echo "Not a valid First Name"
fi

if [[ $lastname =~ $regex ]]
then
	echo "Valid Last Name"
else
	echo "Not a valid Last Name"
fi
