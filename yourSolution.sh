#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status
set -x  # Print commands and their arguments as they are executed

# Ensure the secretDir directory exists
cd src
mkdir -p secretDir
touch secretDir/.secret
chmod 600 secretDir/.secret
# Check if the script has the necessary permissions
if [[ ! -x generateSecret.sh ]]; then
    echo "Setting execute permission on generateSecret.sh"
    chmod +x generateSecret.sh
fi
rm -rf maliciousFiles
rm important.link
# Run the generateSecret.sh script to generate the secret
#cd src
/bin/bash generateSecret.sh

# Check if the secret file was created
if [[ -f secretDir/.secret ]]; then
    echo "Secret file created successfully."
    # Set the correct permissions for the secret file
    # chmod 600 secretDir/.secret
else
    echo "Failed to create the secret file."
    exit 1
fi





