#!/bin/bash
ip=$(awk '{print $1}' logs.txt | sort | uniq -c | sort -nr | head -n 1 | awk '{print $2}')
awk -v ip="$ip" '$1 == ip {print $(NF-1)}' logs.txt | tr -d '"' | sort | uniq -c | sort -nr | head -n 1 | awk '{print $2}'
