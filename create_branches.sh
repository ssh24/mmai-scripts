#!/bin/bash

declare -a arr=("ng" "hz" "gl" "ag" "ts" "sh")
declare -a branch=("data-collection" "data-exploration" "data-cleansing" "modelling")


## now loop through the above array
for i in "${arr[@]}"
do
   git nb $i
   git fpoc
   count=0
   for j in "${branch[@]}"
   do
        git nb "$count"-"$i"-"$j"
        git fpoc 
	count=$((count+1))
   done
done

