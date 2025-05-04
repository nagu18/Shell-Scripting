in the script it show that 
#!/bin/bash
if [ $# -lt 1 ] ; then -- $# is Argument -lt Comparison operator (less than)
 echo "Usage: $0 <name>" -- Usage isb 
exit 1
fi
echo "Hello $1"
exit 0
output -- 
nagendar@Nagendhars-MacBook-Air Shell-Scripting % ./if.sh   
Usage: ./if.sh <name>
nagendar@Nagendhars-MacBook-Air Shell-Scripting % 
------------------------------------------------------------------------
#!/bin/bash
if [ $# -lt 1 ] ; then 
echo "Usage: $0 <name>"
fi
echo "Hello $1"
output -- 
nagendar@Nagendhars-MacBook-Air Shell-Scripting % ./if.sh    
Usage: ./if.sh <name>  -- the Statement 1 is Executing
Hello   -- the Statement 2 is Executing
----------------------------------------------------------------------------
about -- Usage cmd --
The "usage" command, often seen in shell scripts and programming, is not a built-in command in Unix-like systems or in most programming languages. Instead, it's a convention used to provide guidance to users on how to correctly use a script or program.

The "usage" command is not a specific command that you execute like other shell commands (e.g., `ls`, `echo`, `grep`). Instead, it's typically implemented as part of a script or program to display a help message when the script is invoked incorrectly or when users need guidance on how to use the script's features and options.

Here are the key roles and conventions associated with the "usage" command or message:

1. **Displaying Usage Information:**
   - The "usage" message is usually displayed when the script is run with incorrect arguments or options, or when the user explicitly requests help or usage information.

2. **Syntax and Options Explanation:**
   - The "usage" message typically includes information about the script's syntax, expected command-line arguments, and any available options or flags.
   - It may provide examples of valid usage patterns to guide users in using the script effectively.

3. **Providing Help and Documentation:**
   - The "usage" message serves as part of the script's documentation, helping users understand how to interact with the script and achieve their desired tasks.
   - It can include explanations of different features, parameters, and behaviors of the script.

4. **Exit Status and Error Handling:**
   - After displaying the "usage" message, scripts often exit with a non-zero status (e.g., `exit 1`) to indicate that an error occurred due to incorrect usage.
   - Proper usage of the "usage" message helps users avoid mistakes and provides a better user experience when interacting with the script.

Here's an example of how a "usage" message might be implemented in a Bash script:

```bash
#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Usage: $0 <name>"
    exit 1  # Exit with an error status
fi

echo "Hello, $1!"
```

In this example, if the script is run without providing a name argument (`./script.sh`), it displays a "usage" message indicating how the script should be used. The `exit 1` statement then exits the script with a non-zero status to indicate that there was an error due to incorrect usage.

Overall, the "usage" command or message is a standard practice used in scripting and programming to provide users with helpful guidance and improve the usability of scripts and programs.