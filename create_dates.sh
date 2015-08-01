#!/bin/bash

count="0"
year="2015"
month="8"
day="0"

while [ $day -lt 375 ]
do
  if [[ $count -eq 30 ]]; then
    month=$[$month+1]
    count="0"
  fi

  if [[ $month -eq 13 ]]; then
    month="1"
    year="2016"
  fi

  day=$[$day+1]
  count=$[$count+1]
  date="$year-$month-$count"
  echo $date >> dates.txt
done


