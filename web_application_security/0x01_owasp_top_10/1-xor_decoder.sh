#!/bin/bash

input="$1"

if [[ "$input" == "{xor}"* ]]; then
    input="${input#'{xor}'}"
fi

python3 -c "
import base64
import sys

data = base64.b64decode('$input')
decoded = ''.join(chr(b ^ 95) for b in data)
print(decoded)
"
