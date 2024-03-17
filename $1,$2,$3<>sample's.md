The `$1` in shell scripting refers to the first command-line argument passed to a script or function. When you run a script or a function in a shell environment and provide arguments after the script or function name, those arguments are accessible within the script using positional parameters such as `$1`, `$2`, `$3`, and so on.

Here's an example to illustrate how `$1` works:

Let's say you have a script named `greet.sh` with the following content:

```bash
#!/bin/bash

echo "Hello, $1!"
```

When you run this script and provide an argument, like this:

```bash
./greet.sh John
```

The script will output:

```
Hello, John!
```

In this example:

- `./greet.sh` is the script name being executed.
- `John` is the argument passed to the script.
- Inside the script, `$1` refers to the first argument, which in this case is `John`.

You can use `$2`, `$3`, and so on to access additional arguments if they are provided. For instance:

```bash
#!/bin/bash

echo "Hello, $1 and $2!"
```

Running the script with two arguments:

```bash
./greet.sh Alice Bob
```

Will output:

```
Hello, Alice and Bob!
```

Here, `$1` refers to the first argument (`Alice`) and `$2` refers to the second argument (`Bob`).

Using positional parameters like `$1`, `$2`, etc., allows your scripts to be more flexible and handle varying inputs based on user-provided arguments.