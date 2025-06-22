#!/bin/bash
R="\e[31m"  # red color text
G="\e[32m"  # green color text
N="\e[0m"   # normal text

USERID=$(id -u)

CHECK_ROOT() {    # function to check root user or not
    if [ $USERID -ne 0 ]
    then 
        echo "Run the script with Root privileges"
        exit 1
    fi
}

VALIDATE() {     # function to print installation status
    if [ $1 -ne 0 ]
    then
        echo "$2 is...$R FAILED $N"
        exit 1
    else
        echo "$2 is...$G SUCCESS $N"
    fi
}

CHECK_ROOT    # calling CHECK_ROOT function

dnf list installed git

if [ $? -ne 0 ]
then
    echo "Git not installed, installing git"
    dnf install git -y
    VALIDATE $? "Git Installation"   # calling VALIDATE function
else
    echo "Git already installed"
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "mysql is not installed"
    dnf install mysql -y
    VALIDATE $? "Installing mysql"   # calling VALIDATE function
else
    echo "mysql is already installed"
fi