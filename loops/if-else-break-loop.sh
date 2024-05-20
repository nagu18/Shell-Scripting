#!/bin/bash

# Using break
for num in 1 2 3 4 5
do
    if [ $num -eq 4 ]; then
        break
    fi
    echo "Number: $num"
done

# Using continue
for num in 1 2 3 4 5
do
    if [ $num -eq 3 ]; then
        continue
    fi
    echo "Number: $num"
done
