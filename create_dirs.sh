#!/bin/bash

declare -a arr=("ng" "hz" "gl" "ag" "ts" "sh")

## now loop through the above array
for i in "${arr[@]}"
do
   mkdir -p user/$i
   echo -e "User directory for $i" >> user/$i/README.md
done
