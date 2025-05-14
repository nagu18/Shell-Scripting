Okay, here's a breakdown of that Bash cheat sheet, formatted for clarity as if it were being presented in a PDF.

## **Bash Cheat Sheet: Easy Memory Edition**

This cheat sheet provides concise explanations and examples for common Bash operations, designed for quick recall.

### ---

**1\. Files: "Is it there? What is it?"**

These tests help you determine the nature and accessibility of files and directories.

* **\-d**: **D**irectory?  
  Bash  
  if \[ \-d "/home/user/Documents" \]; then  
    echo "Documents is a directory"  
  fi

  *Explanation:* Checks if the specified path is a directory.  
* **\-f**: **F**ile (regular)?  
  Bash  
  if \[ \-f "myfile.txt" \]; then  
    echo "myfile.txt is a file"  
  fi

  *Explanation:* Checks if the specified path is a regular file (not a directory, symbolic link, etc.).  
* **\-e**: **E**xists?  
  Bash  
  if \[ \-e "config.ini" \]; then  
    echo "config.ini exists"  
  fi

  *Explanation:* Checks if the specified path exists (could be a file, directory, or other file system object).  
* **\-rwx**: **R**ead, **W**rite, e**X**ecute? (Specifically \-r, \-w, \-x)  
  Bash  
  if \[ \-r "script.sh" \]; then  
    echo "script.sh is readable"  
  fi

  if \[ \-w "data.log" \]; then  
    echo "data.log is writable"  
  fi

  if \[ \-x "program" \]; then  
    echo "program is executable"  
  fi

  *Explanation:* Checks if the specified file has read, write, or execute permissions for the current user, respectively.  
* **\-s**: **S**ize (non-empty)?  
  Bash  
  if \[ \-s "report.txt" \]; then  
    echo "report.txt is not empty"  
  fi

  *Explanation:* Checks if the specified file exists and has a size greater than zero.

### ---

**2\. Strings: "Compare and Check"**

These operators are used for comparing and checking the properties of strings.

* **\-z**: **Z**ero (empty)?  
  Bash  
  MYVAR=""  
  if \[ \-z "$MYVAR" \]; then  
    echo "MYVAR is empty"  
  fi

  *Explanation:* Returns true if the length of the string variable is zero. Always quote the variable to avoid issues with spaces or empty strings.  
* **\-n**: **N**ot zero (not empty)?  
  Bash  
  MYVAR="some text"  
  if \[ \-n "$MYVAR" \]; then  
    echo "MYVAR is not empty"  
  fi

  *Explanation:* Returns true if the length of the string variable is greater than zero. Always quote the variable.  
* **\==**: Equal?  
  Bash  
  USER="root"  
  if \[ "$USER" \== "root" \]; then  
    echo "You are root"  
  fi

  *Explanation:* Compares two strings for equality. Note the use of single quotes around the variables to prevent word splitting and globbing.  
* **\!=**: Not equal?  
  Bash  
  OS="Linux"  
  if \[ "$OS" \!= "Windows" \]; then  
    echo "Not a Windows system"  
  fi

  *Explanation:* Compares two strings for inequality.  
* **\< \>**: Less/Greater (alphabetical)?  
  Bash  
  if \[\[ "apple" \< "banana" \]\]; then  
    echo "apple comes before banana"  
  fi

  *Explanation:* Compares strings lexicographically (alphabetical order). This requires the double square brackets \[\[ \]\] for proper behavior.

### ---

**3\. Numbers: "Math Comparisons"**

These operators are used for comparing numerical values.

* **\-eq**: **E**qual?  
  Bash  
  COUNT=10  
  if \[ "$COUNT" \-eq 10 \]; then  
    echo "COUNT is 10"  
  fi

  *Explanation:* Checks if two numbers are equal.  
* **\-ne**: **N**ot equal?  
  Bash  
  AGE=25  
  if \[ "$AGE" \-ne 0 \]; then  
    echo "AGE is not zero"  
  fi

  *Explanation:* Checks if two numbers are not equal.  
* **\-lt, \-le**: **L**ess than, **L**ess than or equal?  
  Bash  
  NUM=3  
  if \[ "$NUM" \-lt 5 \]; then  
    echo "NUM is less than 5"  
  fi

  SCORE=100  
  if \[ "$SCORE" \-le 100 \]; then  
    echo "SCORE is less than or equal to 100"  
  fi

  *Explanation:* Checks if the first number is less than or less than or equal to the second number, respectively.  
* **\-gt, \-ge**: **G**reater than, **G**reater than or equal?  
  Bash  
  SIZE=1500  
  if \[ "$SIZE" \-gt 1024 \]; then  
    echo "SIZE is greater than 1024"  
  fi

  VERSION=2  
  if \[ "$VERSION" \-ge 2 \]; then  
    echo "VERSION is 2 or higher"  
  fi

  *Explanation:* Checks if the first number is greater than or greater than or equal to the second number, respectively.

### ---

**4\. Logic: "Combine and Negate"**

These operators allow you to combine multiple conditions or negate a condition.

* **&&**: AND (both must be true)  
  Bash  
  if \[ \-d "mydir" \] && \[ \-w "mydir" \]; then  
    echo "mydir exists and is writable"  
  fi

  *Explanation:* The second command after && is executed only if the first command (or condition) returns true (exit code 0).  
* **||**: OR (one or both true)  
  Bash  
  if \[ \-f "file1.txt" \] || \[ \-f "file2.txt" \]; then  
    echo "Either file1.txt or file2.txt exists"  
  fi

  *Explanation:* The second command after || is executed only if the first command (or condition) returns false (non-zero exit code).  
* **\!**: NOT (reverse truth)  
  Bash  
  if \[ \! \-f "temp.txt" \]; then  
    echo "temp.txt does not exist"  
  fi

  *Explanation:* Reverses the truth value of the following condition. If the condition is true, \! makes it false, and vice versa.

### ---

**5\. Special Variables: "Info About the Script"**

These built-in variables provide information about the currently running script and its environment.

* **$?**: Last command's **?** (exit code)  
  Bash  
  ls non\_existent\_file  
  echo "Exit code: $?"

  *Explanation:* Stores the exit status of the last executed command. A value of 0 usually indicates success, while non-zero values indicate an error.  
* **$$**: My **P**rocess **I**dentifier (PID)  
  Bash  
  echo "Script PID: $$"

  *Explanation:* Contains the process ID of the current shell or script.  
* **$\#**: **\#** of arguments  
  Bash  
  \# If the script is run as: ./myscript arg1 arg2  
  echo "Number of arguments: $\#" \# Output: 2

  *Explanation:* Represents the number of command-line arguments passed to the script.  
* **$@**: All arguments (separate)  
  Bash  
  \# If the script is run as: ./myscript hello world  
  for arg in "$@"; do  
    echo "Argument: $arg"  
  done  
  \# Output:  
  \# Argument: hello  
  \# Argument: world

  *Explanation:* An array-like variable containing all the command-line arguments passed to the script, with each argument treated as a separate word (even if quoted).

### ---

**6\. Redirects: "Send Input/Output"**

Redirections allow you to change the standard input, output, and error streams of commands.

* **\>**: Overwrite output  
  Bash  
  ls \> filelist.txt

  *Explanation:* Redirects the standard output of the ls command to the file filelist.txt, overwriting the file if it exists.  
* **\>\>**: Append output  
  Bash  
  echo "New data" \>\> data.log

  *Explanation:* Redirects the standard output of the echo command to the file data.log, appending the output to the end of the file if it exists.  
* **\<**: Input from file  
  Bash  
  wc \-l \< input.txt

  *Explanation:* Redirects the standard input of the wc \-l (word count, lines) command to come from the file input.txt.  
* **2\>**: Error output  
  Bash  
  command\_that\_might\_fail 2\> errors.log

  *Explanation:* Redirects the standard error (file descriptor 2\) of the command to the file errors.log.  
* **&\>**: All output (errors and normal)  
  Bash  
  script.sh &\> output.log

  *Explanation:* Redirects both the standard output and standard error to the specified file (output.log). This is a shorthand for 2\>&1 \> output.log in some shells.

### ---

**7\. Process Substitution: "Command Output as File"**

Process substitution allows you to treat the output of a command as if it were a file.

* **\<()**: Use command output as input  
  Bash  
  diff \<(ls dir1) \<(ls dir2)

  *Explanation:* Executes the ls dir1 and ls dir2 commands, and their outputs are made available as temporary files. The diff command then compares these two outputs as if they were files.  
* **\>()**: Use file descriptor as output  
  Bash  
  tee \>(gzip \> output.gz) \< input.txt

  *Explanation:* The output of tee (which reads from input.txt and writes to standard output) is also piped into a process that compresses it using gzip and saves it to output.gz.

### ---

**8\. Brace Expansion: "Generate Lists"**

Brace expansion provides a way to generate multiple similar strings.

* **{1..5}**: Numbers 1 to 5  
  Bash  
  echo {1..5} \# Output: 1 2 3 4 5

  *Explanation:* Generates a sequence of numbers from 1 to 5\.  
* **{a..e}**: Letters a to e  
  Bash  
  echo {a..e} \# Output: a b c d e

  *Explanation:* Generates a sequence of lowercase letters from a to e.  
* **touch file{1..3}.txt**  
  Bash  
  \# Creates files: file1.txt file2.txt file3.txt

  *Explanation:* Can be used to create multiple files or directories with a common prefix or suffix.

### ---

**9\. Misc. "Extras"**

These are some additional useful Bash features.

* **&**: Run in background  
  Bash  
  long\_running\_command &  
  echo "Command started in the background"

  *Explanation:* Executes the command in the background, allowing you to continue using the terminal.  
* **;**: Multiple commands on one line  
  Bash  
  cd mydir; ls \-l

  *Explanation:* Separates multiple commands on a single line. The commands are executed sequentially.  
* **&&**: If previous succeeds  
  Bash  
  mkdir newdir && cd newdir

  *Explanation:* Executes the second command (cd newdir) only if the first command (mkdir newdir) completes successfully (exit code 0).

### ---

**10\. Set Flags: "Shell Behavior"**

The set command can modify the behavior of the Bash shell.

* **\-e**: Exit on error  
  Bash  
  set \-e  
  command\_that\_might\_fail  
  echo "This won't print if the above fails"

  *Explanation:* If any command exits with a non-zero status, the script will terminate immediately. This is useful for preventing cascading errors.  
* **\-x**: Show commands as they run  
  Bash  
  set \-x  
  ls \-l  
  echo "Done"  
  set \+x \# To disable tracing

  *Explanation:* Displays each command before executing it, which is helpful for debugging. Use set \+x to turn off this tracing.  
* **\-u**: Error on unset variable  
  Bash  
  set \-u  
  echo "$undefined\_var" \# This will cause an error and script termination

  *Explanation:* Treats unset variables as an error. This helps catch typos in variable names.

---

This cheat sheet should provide a handy reference for common Bash operations. Keep practicing, and these commands will become second nature\!