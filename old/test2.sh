#!/bin/bash

if [ -n "$SSH_TTY" ]; then
  echo "You are connected via SSH."
else
  echo "You are not connected via SSH."
fi
