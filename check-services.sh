#Bashscript to check all services in linux

#!/bin/bash

# Check if the script is being run as root

if [ "$(id -u)" != "0" ]; then

    echo "This script must be run as root" 1>&2

    exit 1

fi

# List all active services

echo "Active services:"

systemctl list-units --type=service –state=active

