#!/bin/bash


ID=$(id -u)

if [ $ID -ne 0 ]
then
  echo "he is a normal user, try install using root user"
fi

      