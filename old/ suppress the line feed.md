If we want to suppress the new line, especially useful if we are to prompt users, we
can do this in the following two ways with the help of echo:
$ echo -n "Which directory do you want to use? "
$ echo -e "Which directory do you want to use? \c"
The result will be to suppress the line feed. In the initial example, the -n option is
used to suppress the line feed. The second example uses the more generic -e option,
which allows escape sequences to be added to the text string. To continue on the
same line, we use \c as the escape sequence.
This does not look great as the final part of the script or when it is run from the
command line, as the command prompt will follow. This is illustrated in the
following screenshot:
example==
pi@pilabs ~ $ echo-e "Which directory do you want to use? Ic" Which directory do you want to use? pi@pilabs ~ $ -