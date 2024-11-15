#!/bin/bash

fruits=("mango" "apple" "pomo")


echo "first fruit is : ${fruits[0]}"

echo "second fruit is : ${fruits[1]}"

echo "all fruits are : ${fruits[@]}"

echo "all fruits are : ${fruits[$#]}"