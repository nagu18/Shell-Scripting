
**README**

**Script Name:** (Replace with your chosen name)

**Purpose**

This script sends a custom message to a specific user's console on a Linux system, but only if the user is currently logged in.

**How It Works**

1. **User Login Check:**
   - `who | grep <username>` (Replace `<username>` with the target user's name):
     - `who`: Retrieves a list of logged-in users.
     - `grep <username>`: Filters the `who` output to only show lines containing the `<username>`.
   - `> /dev/null 2>&1`:
     - Redirects both standard output (stdout) and standard error (stderr) to `/dev/null`, a special file that discards any output. This keeps the console clean, even if the user isn't found.

2. **Conditional Messaging:**
   - `&& write <username> < message.txt`:
     - `&&`: The logical AND operator. The `write` command after `&&` only executes if the previous command (`who | grep <username> > /dev/null 2>&1`) succeeds (meaning the user is logged in).
     - `write <username>`: Sends a message directly to the console of the specified `<username>`.
     - `< message.txt`: Redirects the contents of the file "message.txt" as the input to the `write` command. This ensures the message within that file is sent.

**Assumptions**

- The script is executed on a Linux system.
- The target user (`<username>`) has a console session open.
- The file "message.txt" exists in the specified location (`/Users/nagendar/Desktop/Shell-Scripting/message.txt`).

**Customization**

- Replace `<username>` with the actual username of the target user.
- Modify the contents of "message.txt" to personalize the message sent.

**How to Use**

1. Save the script as a file with a `.sh` extension (e.g., `send_message.sh`).
2. Make the script executable using `chmod +x send_message.sh`.
3. Run the script from the command line: `./send_message.sh`

**Security Considerations**

- This script sends messages without any authentication or encryption. It's generally not recommended for sensitive information.
- Consider using more secure methods like internal messaging systems or email for confidential communication.

**Additional Notes**

- The script can be easily adapted to send messages to different users by modifying the `<username>` variable.

I hope this README provides a clear and informative explanation of the script's functionality!