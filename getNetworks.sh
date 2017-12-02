#!/bin/bash
# Config Options
set -e
source ./log.sh

# VARIABLES


#  Functions
function scan {
    iwlist $1 scanning | egrep 'Cell |Encryption|Quality|Last beacon|ESSID' | sed 's/ - /\n/g' | sed -E 's/^\s*?/\n/g' | egrep -v '^$'
}

# Checking to make sure script is run as root
if [[ $EUID -ne 0 ]]; then
   log err "This script must be run as root" 
   exit 1
fi

#####################################
# MAIN
#####################################
scan $1 || log err "Please check interface."