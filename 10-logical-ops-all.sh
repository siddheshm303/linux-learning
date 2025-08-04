#!/bin/bash

echo "==Access Control Panel=="

read -p "Enter your age: " age
read -p "Enter your role[admin/user/guest]: " role

if [[ $age -gt 0 || $role != "" ]]
then
	echo "Input is valid."
else
	echo "Invalid input."
fi

if [[ $age -ge 18 && ( $role == "admin" || $role == "user" ) ]]
then
	echo "Access granted."
else
	echo "Access denied."
	exit 1
fi

read -p "Username: " username
read -p "Password: " password

correct_user="siddhesh"
correct_pass="pass123"

#Condition using && and || instead of ifelse
[[ $username == $correct_user && $password == $correct_pass ]] && echo "Login Successful" || echo "Incorrect Credentials" 


