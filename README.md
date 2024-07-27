# Bash Script Executor

## Overview

`Bash Script Executor` is a utility script designed to enhance the performance of your workflow by automating the execution of bash scripts in separate `screen` sessions. This script performs the following tasks:

1. Finds all `.sh` files in the current directory and its subdirectories.
2. Changes the permissions of each found `.sh` file to make them executable.
3. Processes each directory, executing each `.sh` file found in a separate `screen` session.

## Usage

1. **Clone the repository:**
    ```bash
    git clone https://github.com/Raphaelhdd/bash-script-executor.git
    cd bash-script-executor
    ```

2. **Make the script executable:**
    ```bash
    sudo chmod +x run_scripts.sh
    ```

3. **Run the script:**
    ```bash
    ./run_scripts.sh
    ```

## Prerequisites

- Ensure that `screen` is installed on your machine. You can install it using:
    ```bash
    sudo apt-get install screen  # For Debian/Ubuntu
    sudo yum install screen      # For CentOS/RHEL
    sudo pacman -S screen        # For Arch Linux
    ```

## Features

- **Automated Permission Change:** Automatically changes the permissions of `.sh` files to make them executable.
- **Recursive Directory Processing:** Processes all directories in the current directory recursively.
- **Screen Sessions:** Executes each `.sh` file in a separate `screen` session, allowing for parallel execution and easier management.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

Feel free to submit issues or pull requests. For major changes, please open an issue first to discuss what you would like to change.

## Author

- [Rapahel Haddad](https://github.com/Raphaelhdd)

## Acknowledgments

- Thanks to the open-source community for providing excellent tools and resources.
