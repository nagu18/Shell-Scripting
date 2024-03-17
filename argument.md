argument is Providing user input is known as a argument, example
argument.sh nagu konda mudhraj
is an argument
#!/bin/bash

if test $# -gt 0; then
  filename="$1"
  if [ -f "$filename" ]; then
    echo "The file '$filename' exists."
  else
    echo "The file '$filename' does not exist."
  fi
else
  echo "Please provide a filename as an argument."
fi
to text it 
this text.sh dece ece --- this is an argument 