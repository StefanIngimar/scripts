#!/bin/bash
MAX_USAGE=90
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$USAGE" -gt "$MAX_USAGE" ]; then
  echo "Disk usage is above threshold at $USAGE%"
else
  echo "Disk usage is within the limit: $USAGE%"
fi
