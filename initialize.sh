#!/bin/bash

# First, we are prompting for the Database Host
echo Write your Database Host
read host

# we are prompting for the Database User
echo Write your Database User 
read user

# we are prompting for the Database Password
echo Write your Database Password
read password

# we are prompting for the Database
echo Write your Database
read database

# we are prompting for the Flask App
echo Write your Flask App
read app

# Development Mode
echo Environment Mode
read environment

export FLASK_DATABASE_HOST=$host
export FLASK_DATABASE_USER=$user
export FLASK_DATABASE_PASSWORD=$password
export FLASK_DATABASE=$database
export FLASK_APP=$app

if [ $environment == 'development' ]
then
	export FLASK_ENV=development
fi

clear
flask run
