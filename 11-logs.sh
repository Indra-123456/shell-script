#!/bin/bash


ID=$(id -u)
timestamp=$(date +%F-%H-%M-%S)

logfile="/tmp/$0-$timestamp.log"

R="\e[31m"
G="\e[32m"

N="\e[0m"

validate(){
    if [ $1 -ne 0 ]
    then
        echo "error:  $2.... $R failed $N"
        exit 1;
    else
        echo "$2..... $G success $N"
    fi 
}

if [ $ID -ne 0 ]
then
  echo "$R Error::he is a normal user, try install using root user $N"
  exit 1;
else 
  echo "he is a root user"
fi


yum install -y mysql &>> $logfile

validate $? "Installing mysql"


yum install git -y &>> $logfile

validate $? "installing git"