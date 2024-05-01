#!/bin/bash

# User information
echo "Who is logged in? $(who)"
echo "---------------"

# System information
echo "Linux version $(uname -r)"
echo "Hostname: $(hostname)"
echo "System uptime $(uptime -p)"
echo "Disk space usage: "
df -h
echo "--------------"

echo "Memory usage: "
free -h
echo "--------------"

echo "Network connections"
netstat -antop
echo "Firewall status"
sudo ufw status
echo "--------------"
