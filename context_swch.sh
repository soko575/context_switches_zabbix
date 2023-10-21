#!/bin/bash

Processname=$1
PID=$(pgrep -o "$Processname")


initial_count=$(cat /proc/$PID/status | grep '^voluntary_ctxt_switches' | awk '{print $2}')

sleep 5

final_count=$(cat /proc/$PID/status | grep '^voluntary_ctxt_switches' | awk '{print $2}')

time_interval=5

context_switch_rate=$(((final_count - $initial_count) / $time_interval))

echo $context_switch_rate
