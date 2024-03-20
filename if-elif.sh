#!/bin/bash
# Author: @theurbanpenguin
# Web: www.theurbapenguin.com

# Prompt user for compression level (H, M, or L)
read -p "Choose H, M or L compression (default: M): " file_compression

# Set default compression option (M)
tar_opt="-z"  # -z flag for gzip compression (M)

# Assign alternative compression options based on user input
if [ $file_compression = "L" ] ; then
  tar_opt="-zl"  # -zl flag for xz (Lzma) compression
elif [ $file_compression = "H" ]; then
  tar_opt="-zcvf"  # -zcvf flags for verbose (-v) creation (-c) and filename argument (-f) (H) - allows specifying output filename later
fi

# Get directory to backup
read -p "Which directory do you want to backup to (default: current directory): " dir_name

# Check and create backup directory if needed
if [ -z "$dir_name" ]; then
  dir_name="."  # Use current directory if no directory provided
fi
test -d "$dir_name" || mkdir -m 700 "$dir_name"

# Get files to backup (optional enhancement)
# You can uncomment these lines to prompt the user for specific files or patterns
# read -p "Enter specific files or patterns to backup (leave blank for all): " files_to_backup

# Create archive name (if using H compression)
if [ "$tar_opt" = "-zcvf" ]; then
  read -p "Enter a name for the archive file: " archive_name
  tar_opt="$tar_opt $archive_name"
fi

# Perform backup
tar $tar_opt ./*  # Replace with specific files/patterns if uncommented above

# Print success message
echo "Backup completed successfully!"

exit 0
