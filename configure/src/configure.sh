#!/bin/sh

# Exit if any command fails
set -e

# Replace values in the configuration file
sh replace.sh ddclient.conf.template > /config/ddclient.conf

# Print the configuration file for debugging purposes
cat /config/ddclient.conf
