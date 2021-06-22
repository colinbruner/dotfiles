#!/usr/bin/env bash

###
# Note: This script does nothing... Just a compiliation of useful bash script things.
###


# Get abs path of script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Prompt
read -p "Continue? (y/n): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1


