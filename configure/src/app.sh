#!/bin/sh

# Exit if any command fails
set -e

./replace.sh ddclient.conf.template > /config/ddclient.conf

cat /config/ddclient.conf
