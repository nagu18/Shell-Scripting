if [ -n "$SSH_TTY" ]; then
    echo "You are connected via SSH"
else
    echo "You are in a local terminal"
fi