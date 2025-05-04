Script comments..
We should always introduce commenting scripts early in the piece. A script
comment is prefaced with a # symbol. Anything after the # symbol is a comment and
is not evaluated by the script. The shebang, #!/bin/bash, is primarily a comment
and, as such, is not evaluated by the script. The shell running the script reads the
shebang so it knows which command interpreter to hand the script over to. A
comment may be at the start of a line or partly into the line. Shell scripting does not
have the notion of multi-line comments.
If you are not already familiar with comments, then they are added to the script to
tell all about who wrote the script, when it was written and last updated, and what
the script does. It is the metadata of the script.
The following is an example of comments in scripts:
#!/bin/bash
# Welcome script to display a message to users on login
# Author: @theurbanpenguin
# Date: 1/1/1971
It is a good practice to comment and add comments that explain what the code is
doing and why. This will help you and your colleagues, who need to edit the script
at a later date.