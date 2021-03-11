#!/bin/bash
echo "IP address: $1"
# /usr/bin/wget "$1" --timeout 30 -O - 2>/dev/null | grep "welcome" || /usr/bin/wget "$1" --timeout 30 -O - 2>/dev/null | /usr/bin/mail -v -s "Site is down" shabari.cs@gmail.com
if wget --spider --server-response $1 2>&1 | grep '200\ OK' | wc -l; then 
   echo "$1 is UP"
else
   echo "$1 is DOWN"
fi