#!/bin/bash

while read date
do
    # fileName=`echo "$date" | tr " " "_"`
    # date="$date 14:00 2013 +0500"
    # echo "Creating file... $fileName"

    echo "$date"
    count=$(jot -r 1  1 10)
    # touch "$fileName"

    for ((i=1; i<=$count; i=i+1))
    do
      echo $date >> message.txt 
      git add . 
      git commit --date="$date" -m "$date"
    done
    # git add "$fileName"
    # git commit --date="$date" --author="public-contributions" -m "$fileName"
done < dates.txt
