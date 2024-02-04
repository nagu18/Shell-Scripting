# BackSlash.sh - Bash Script

## Description:
BackSlash.sh is a simple Bash script that demonstrates the use of the backslash ("\") in handling variables and special characters.

## Script Content:
The script contains three echo statements to illustrate different ways of using variables and escaping special characters:

1. `echo "$USER earn $4"`: This line prints the value of the USER variable and the fourth command-line argument without escaping the special characters.

2. `echo '$USER earn $4'`: This line prints the literal string '$USER earn $4' without interpreting the variables.

3. `echo "$USER earn \$4"`: This line prints the value of the USER variable followed by the string 'earn $4', where the dollar sign ($) is escaped using a backslash.

## Usage:
To run the script, make sure it has execute permissions:
```bash
chmod +x BackSlash.sh
