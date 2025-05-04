#!/bin/bash

# Prompting for name
read -p "May I ask your name: " name
echo "Hello $name"

# Prompting to exit (hiding input)
read -sn1 -p "Press any key to exit"
echo
exit 0
