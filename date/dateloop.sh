#!/bin/bash
trap "exit" SIGINT
INTERVAL=$1
echo Configured to generate new entry every $INTERVAL seconds
mkdir -p /var/dac

while :
do
  echo $(date) Writing to /var/dac/date.txt
  date >> /var/dac/date.txt
  sleep $INTERVAL
done