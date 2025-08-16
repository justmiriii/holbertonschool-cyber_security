#!/bin/bash
whois $1 | awk -F': ' '/(Registrant|Admin|Tech) (Name|Organization|Street|City|State\/Province|Postal Code|Country|Phone|Phone Ext|Fax|Fax Ext|Email)/ {gsub(/^[ \t]+|[ \t]+$/, "", $1); if (NF==2) {sub(/^[ \t]+/, "", $2); print $1 "," $2} else {print $1 ","} }' > $1.csv
