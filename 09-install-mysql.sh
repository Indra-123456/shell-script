#!/bin/bash


ID=$(id -u)

if [ $ID -ne 0 ]
then
  echo "Error::he is a normal user, try install using root user"
  exit 1;
else 
echo "he ia root user"

yum install mysql -y

if [ $? -ne 0]
then
   echo "error: mysql command need to be corrected"
   exit 1;
else
   echo "success:: installtion of my sql is successfull"



      