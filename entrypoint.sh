#!/bin/bash
set -e

if [ -n "$GITHUB_EVENT_PATH" ];
then
    EVENT_PATH=$GITHUB_EVENT_PATH
elif [ -f ./hello.py ];
then
    EVENT_PATH='.'
    LOCAL_TEST=true
    echo "found the python code"
    exit 1
else
    echo "No python code  to process! :("
    exit 1
fi
