#!/bin/bash
# Config Options
set -e
source ./log.sh

# VARIABLES


#  Functions
function scan {
    iwlist $1 scanning
}

# Checking to make sure script is run as root
if [[ $EUID -ne 0 ]]; then
   log err "This script must be run as root" 
   exit 1
fi

#####################################
# MAIN
#####################################
scan wlan0