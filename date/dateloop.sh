#!/bin/bash
trap "exit" SIGINT
mkdir /var/dac

while :
do
  echo $(date) Writing to /var/dac/date.txt
  date >> /var/dac/date.txt
  sleep 10
done
