#!/bin/bash
# customize this value (in kb) according to your system
threshold=1000000
# how often does the script run in seconds
interval=5

function check {
  memory=$(awk '/MemAvailable/{print $2}' /proc/meminfo)
  if (( $memory < $threshold )); then
    notify-send -u low "The system is low on RAM"
  fi
}

while :; do
  check
  sleep $interval
done
