#!/bin/bash
count=$(jot -r 1  1 10)

for ((i=1; i<=$count; i=i+1))
do
  echo $i
done


