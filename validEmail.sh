#!/bin/bash -x

read -p "Enter email address " email;

regex=^[a-z.]+@[a-z]+\.[a-z.]{2,}$

if [[ $email =~ $regex ]]
then
	echo "Valid email"
else
	echo "Not a valid email"
fi
