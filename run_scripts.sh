#!/bin/bash
# First part, initial all bash files to executable
# Find all .sh files in the current directory and its subdirectories
sh_files=$(find . -type f -name "*.sh")

# Change permissions of each found .sh file to make it executable
for file in $sh_files
do
    echo "Changing permissions for: $file"
    sudo chmod +x "$file"
done


# Second part of the code
# Function to process each directory
function process_directory {
    local directory="$1"

    cd "$directory"

    # Find all .sh files recursively
    while IFS= read -r -d '' script_file; do
        # Execute each found .sh file in a screen
        script_name=$(basename "$script_file")
        screen -dmS "$(basename "$directory")_$script_name" bash -c "cd '$(pwd)'; ./$(basename "$script_file"); exec bash"
        echo "Script $script_name executed in screen $(basename "$directory")_$script_name"
    done < <(find . -type f -name "*.sh" -print0)

    # Return to the parent directory
    cd ..
}

# Find all directories in the current directory
directories=$(find . -mindepth 1 -maxdepth 1 -type d)

# Process each found directory
for directory in $directories
do
    echo "Processing directory: $directory"

    # Call the function to process each directory
    process_directory "$directory"
done
