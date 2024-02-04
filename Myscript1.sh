#!/bin/bash
# this is the code where we use basename $0 to hide the parth of our script '
echo "you are using `basename $0`"
echo "Hello $*"
exit 0
