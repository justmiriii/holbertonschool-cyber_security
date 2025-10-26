#!/bin/bash
find $1 -user user2 -type f  -exec chown user3 {} \;
