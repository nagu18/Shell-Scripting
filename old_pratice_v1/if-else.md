Let's break down the provided shell script step by step and explain what each part does:

```bash
if [ $# -lt 1 ]; then
    read -p "Enter a name: "
    name=$REPLY
else
    name=$1
fi
echo "Hello $name"
exit 0
```

1. `if [ $# -lt 1 ]; then`: This line checks if the number of command-line arguments (`$#`) is less than 1. If there are no command-line arguments provided when running the script, this condition will be true.

2. `read -p "Enter a name: "`: If no command-line arguments are provided, the script prompts the user to enter a name by using the `read` command with the `-p` option to display a prompt.

3. `name=$REPLY`: The entered name is stored in the `REPLY` variable, which is automatically set by the `read` command to contain the user's input. The script then assigns this input to the variable `name`.

4. `else`: If there is at least one command-line argument provided, the script skips the `read` command and moves to the `else` block.

5. `name=$1`: In the `else` block, the script assigns the first command-line argument (`$1`) to the variable `name`.

6. `fi`: This line marks the end of the `if` statement and the beginning of the code that should be executed after the conditional logic.

7. `echo "Hello $name"`: Finally, the script prints a greeting message using the value stored in the `name` variable. If the user entered a name or provided an argument, it will greet them with "Hello" followed by their name.

8. `exit 0`: The script exits with a status of 0, indicating successful execution.

Here's how the script works in practice:

- If you run the script without any command-line arguments (`./script.sh`), it will prompt you to enter a name, store it in the `name` variable, and then greet you with "Hello" followed by the entered name.

- If you run the script with a command-line argument (`./script.sh John`), it will use that argument as the name and greet "Hello John".

This script demonstrates how to handle command-line arguments and user input within a shell script using conditional statements (`if` and `else`) and the `read` command for interactive input.