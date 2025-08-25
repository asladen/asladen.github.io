#!/bin/bash

# A script to find and replace a specific string in all markdown files in the current directory and its subdirectories.

# Set DRY_RUN to true to first preview the changes without modifying any files.
# Set DRY_RUN to false to perform the actual replacement.
DRY_RUN=false

# The strings to be found and their replacements.
# Note: The script will search for these strings preceded by a newline.
FIND_REPLACE_PAIRS=(
    "- article-journal" " [\"2\"]"
    "- paper-conference" " [\"1\"]"
    "- thesis" " [\"7\"]"
    "- Uncategorized" " [\"0\"]"
    "- Preprint / Working Paper" " [\"3\"]"
    "- Report" " [\"4\"]"
    "- Book" " [\"5\"]"
    "- Book section" " [\"6\"]"
    "- Patent" " [\"8\"]"
)

# This will build a single sed command with all the substitution rules.
# The command uses extended regex (-E) for clarity.
SED_CMD=''
for ((i=0; i<${#FIND_REPLACE_PAIRS[@]}; i+=2)); do
    FIND_STRING="${FIND_REPLACE_PAIRS[$i]}"
    REPLACE_STRING="${FIND_REPLACE_PAIRS[$i+1]}"

    # We escape special sed characters in the replacement string.
    ESCAPED_REPLACE=$(printf "%s" "$REPLACE_STRING" | sed 's/[\&/]/\\&/g')

    # We escape special sed characters, especially forward slashes, in the find string.
    ESCAPED_FIND=$(printf "%s" "$FIND_STRING" | sed 's/[\/]/\\&/g')

    # We add a substitution command for each pair.
    # The 's' command uses a multi-line pattern to remove the newline.
    SED_CMD+="s/\\n${ESCAPED_FIND}/${ESCAPED_REPLACE}/g;"
done

echo "Searching for markdown files..."

# Find all .md files recursively and loop through them.
# The find command ensures we get all files in subdirectories.
find . -type f -name "*.md" | while read -r file; do

    # Use a loop to check if the file contains any of the strings.
    # The -- ensures grep handles the leading dash in the search string correctly.
    found=false
    for ((i=0; i<${#FIND_REPLACE_PAIRS[@]}; i+=2)); do
        FIND_STRING="${FIND_REPLACE_PAIRS[$i]}"
        if grep -q -- "$FIND_STRING" "$file"; then
            found=true
            break
        fi
    done

    if [ "$found" = true ]; then
        echo "---"
        echo "Found a match in: $file"

        # If in dry run mode, just indicate which file would be modified.
        if [ "$DRY_RUN" = true ]; then
            echo "Would modify file: $file"
        else
            # If not in dry run mode, perform the in-place replacement.
            echo "Modifying file: $file"
            # Use the same multi-line sed command but with the in-place flag.
            sed -i -E -e ':a' -e 'N' -e '$!ba' -e "$SED_CMD" "$file"
        fi
    fi
done

echo "---"
if [ "$DRY_RUN" = true ]; then
    echo "Dry run complete. No files were modified."
else
    echo "Replacement complete. All specified files have been modified."
fi
