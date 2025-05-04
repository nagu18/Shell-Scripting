Enhancing scripts with read prompts --
We have seen how we can use the built in read to populate a variable. So far, we
have used echo to produce the prompt but this can be passed to read itself using the
-p option. The read command will surpass the additional linefeed, so we reduce
both the line count and the complexity to some degree.
We can test this at the command line itself. Try typing the following command to see
read in action:
$ read -p "Enter your name: " name
We use the read command with the -p option. The argument that follows the option
is the text that appears in the prompt. Normally, we will make sure that there is a
trailing space at the end of the text to ensure that we can clearly see what we type.
The last argument supplied here is the variable we want to populate, we simply call
it name. Variables are case-sensitive too. Even if we did not supply the last argument,
we can still store the user's response, but this time in the REPLY variable.
read -p <promt> <variable name>