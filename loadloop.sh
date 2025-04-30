#!/bin/bash

while true; do
  cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $8 " %"}')
  echo "Idle CPU : $cpu_usage" > /tmp/lcd4linux.fifo
  awk '/MemAvailable:/ {printf "%.2fGB\n", $2 / 1024 / 1024}' /proc/meminfo  > /tmp/freememory  
  sleep 1
done
