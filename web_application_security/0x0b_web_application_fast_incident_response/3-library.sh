#!/bin/bash
awk '$1 == "54.145.34.34" {print $NF}' logs.txt | tr -d '"' | sort | uniq -c | sort -nr | head -n 1 | awk '{print $2}'
