Testing file types
While testing for values we can test for the existence of a file or file type. For
example, we may only want to delete a file if it is a symbolic link. I use this while
compiling a kernel. The /usr/src/linux directory should be a symbolic link to the
latest kernel source code. If I download a newer version before compiling the new
kernel, I need to delete the existing link and create a new link. Just in case someone
has created the /usr/src/linux directory, we can test it as a link before removing it:
# [ -h /usr/src/linux ] &&rm /usr/src/linux
The -h option tests that the file has a link. Other options include:
•
-d: This shows that it's a directory
•
-e: This shows that the file exists in any form
•
-x: This shows that the file is executable
•
-f: This shows that the file is a regular file
•
-r: This shows that the file is readable
•
-p: This shows that the file is a named pipe
•
-b: This shows that the file is a block device
•
-c: This shows that the file is a character device
More options do exist, so delve into the main pages as you need. We will
use different options throughout the book; thus, giving you practical and
useful examples.
