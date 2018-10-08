#!/bin/sh

# Exit if any command fails
set -e

# unless the container is configured to actually start, it will exit immediately
if [ ! ${START_CONTAINER} -eq 1 ]; then
    exit 0
fi

# Replace values in the configuration file
mkdir -p /etc/ddclient
./replace.sh ddclient.conf.template > /etc/ddclient/ddclient.conf

# Print the configuration file for debugging purposes
cat /etc/ddclient/ddclient.conf

# Run the Dynamic DNS client
ddclient -daemon=300 -foreground -noquiet
