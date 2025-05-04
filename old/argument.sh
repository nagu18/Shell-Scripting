#!/bin/bash

if test $# -gt 0; then
  echo "The script received the following arguments:"
  count=1
  while test $# -gt 0; do
    echo "Argument $count: $1"
    shift
    count=$((count + 1))
  done
else
  echo "The script received no arguments."
fi

