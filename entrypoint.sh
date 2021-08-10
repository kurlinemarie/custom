#!/bin/bash
set -e

# if keyword is found
if echo "$*" | grep -i -q MYKEYWORD;
then
    # do something
    echo "Found keyword."
    echo "Running python"
    python3 hello.py
# otherwise
else
    # exit gracefully
    echo "Nothing to process."
fi
