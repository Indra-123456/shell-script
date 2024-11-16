#!/bin/bash


ID=$(id -u)

validate(){
    if [ $? -ne 0 ]
    then
        echo "error:  command need to be corrected"
        exit 1;
    else
        echo "success:: installtion  is successfull"
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

validate


yum install git -y

validate