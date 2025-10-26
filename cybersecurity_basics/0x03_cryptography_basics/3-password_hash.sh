#!/bin/bash
{ openssl rand -hex 16; echo $1; } | tr "\n" "" | openssl dgst -sha512 > 3_hash.txt
