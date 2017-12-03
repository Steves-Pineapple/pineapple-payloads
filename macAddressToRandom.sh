#!/bin/bash

# Config Options
source ./log.sh
source ./isroot.sh

# Functions
function generateMacAddress {
    cat /dev/urandom | grep -Eoa "[a-f0-9]" | head -12 | sed ':a;N;$!ba;s/\n//g' | sed 's/../&:/g;s/:$//'
}

function configureMacAddress {
    ifconfig $1 hw ether generateMacAddress
}

#####################################
# MAIN
#####################################
[[ ! -z "$1" ]] && { 
    configureMacAddress $1  || log err "could not change MAC Address for $1"
}