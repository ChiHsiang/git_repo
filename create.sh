#!/bin/bash

while read date
do
    echo "$date"
    count=$(jot -r 1  1 10)

    for ((i=1; i<=$count; i=i+1))
    do
      echo $date >> message.txt 
      git add . 
      git commit --date="$date" -m "$date"
    done
done < dates.txt
