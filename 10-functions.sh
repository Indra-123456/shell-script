#!/bin/bash


ID=$(id -u)

validate(){
    if [ $1 -ne 0 ]
    then
        echo "error:  $2....failed"
        exit 1;
    else
        echo "$2..... success"
    fi 
}

if [ $ID -ne 0 ]
then
  echo "Error::he is a normal user, try install using root user"
  exit 1;
else 
  echo "he is a root user"
fi


yum install -y mysql

validate $? "Installing mysql"


yum install git -y

validate $? "installing git"