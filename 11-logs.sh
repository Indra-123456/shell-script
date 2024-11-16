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
        echo -e "error:  $2.... $R failed $N"
        exit 1;
    else
        echo -e "$2..... $G success $N"
    fi 
}

if [ $ID -ne 0 ]
then
  echo -e "$R Error::he is a normal user, try install using root user $N"
  exit 1;
else 
  echo -e "$G he is a root user $N"
fi


yum install -y mysql &>> $logfile

validate $? "Installing mysql"


yum install git -y &>> $logfile

validate $? "installing git"