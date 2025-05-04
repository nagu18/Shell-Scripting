# Check if "myfile.txt" exists and is readable:
if [ -e file -a -r file ]; then
  echo "myfile exists and you can read it."
fi
