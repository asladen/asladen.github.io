#!/bin/bash

# A script to find and replace a specific string in all markdown files in the current directory and its subdirectories.

# Set DRY_RUN to true to first preview the changes without modifying any files.
# Set DRY_RUN to false to perform the actual replacement.
DRY_RUN=false

# The string to be found.
FIND_STRING="- article-journal"

# The string to replace it with.
REPLACE_STRING='["2"]'

echo "Searching for markdown files..."

# Find all .md files recursively and loop through them.
# The find command ensures we get all files in subdirectories.
find . -type f -name "*.md" | while read -r file; do
    # Check if the file contains the string to be replaced.
    # The -- ensures grep handles the leading dash in the search string correctly.
    if grep -q -- "$FIND_STRING" "$file"; then
        echo "---"
        echo "Found a match in: $file"

        # If in dry run mode, show the changes without saving them.
        if [ "$DRY_RUN" = true ]; then
            echo "Preview of changes (file will NOT be modified):"
            # Use sed to print only the modified lines to the console.
            sed -n "s/$FIND_STRING/$REPLACE_STRING/p" "$file"
        else
            # If not in dry run mode, perform the in-place replacement.
            echo "Modifying file: $file"
            sed -i "s/$FIND_STRING/$REPLACE_STRING/g" "$file"
        fi
    fi
done

echo "---"
if [ "$DRY_RUN" = true ]; then
    echo "Dry run complete. No files were modified."
else
    echo "Replacement complete. All specified files have been modified."
fi
