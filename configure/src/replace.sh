#!/bin/sh

# Exit if any command fails
set -e

# Read in template one line at the time, and replace environment variables
while read line
do
    eval echo "$line"
done < $1
