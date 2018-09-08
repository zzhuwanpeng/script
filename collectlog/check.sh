#!/bin/bash
file=$1
command=$2
echo $file
echo $command
for i in `cat $file`
do
   ./ssh.sh $i "$command"
done
