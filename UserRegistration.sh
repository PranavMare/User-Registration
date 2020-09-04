#! /bin/bash -x

echo "Enter your first name : " 
read firstname

firstname_regex=^[[:upper:]][a-z]{2,}$

if [[ $firstname =~ $firstname_regex ]]
then
    echo "First name is valid "
else
    echo "First name is invalid"
fi

echo "Enter your last name : " 
read lastname

lastname_regex=^[[:upper:]][a-z]{2,}$

if [[ $lastname =~ $lastname_regex ]]
then
    echo "Last Name is valid"
else
    echo "Last Name is Invalid"
fi

read -p "Enter your Email-Id : " email

email_regex=^abc[.][a-z]{3}@bl[.]co[.][a-z]{2}$

if [[ $email =~ $email_regex ]]
then
    echo "Email-Id is valid"
else
    echo "Emai-Id is invalid"
fi

read -p "Enter your mobile no: " number

number_regex=^[0-9]{2}[" "][0-9]{10}$

if [[ $number =~ $number_regex ]]
then
    echo "mobile number is valid"
else    
    echo "mobile numbe is invalid"
fi

read -p "Enter the password : " pass1

pass1_regex=^[a-zA-Z0-9@/.,_~%^&\*]{8,}$

if [[ $pass1 =~ $pass1_regex ]]
then
    echo "Password rule1 is valid"
else
    echo "password rule1 is invalid"
fi

read -p "Enter the password checking for rule2 : " pass2
if [[ ${#pass2} -ge 8 && "$pass2" == *[A-Z]* && "$pass2" == *[a-z]* ]]
then
        echo "password rule2 is valid "
else
        echo "password must contain atleast a capital letter and 8 characters"
fi

read -p "Enter the password checking for rule3 : " pass3
if [[ ${#pass3} -ge 8 && "$pass3" == *[A-Z]* && "$pass3" == *[a-z]* && $pass3 == *[0-9]* ]]
then
        echo "password rule3 is valid "
else
        echo "password must contain atleast a number, capital letter and 8 characters"
fi

read -p "Enter the password checking for rule3 : " pass4
if [[ ${#pass4} -ge 8 && "$pass4" == *[A-Z]* && "$pass4" == *[a-z]* && $pass4 == *[0-9]* && $pass4 == *[@$%^&_*]* ]]
then
        echo "password rule3 is valid "
else
        echo "password must contain atleast a number, capital letter and 8 characters"
fi
