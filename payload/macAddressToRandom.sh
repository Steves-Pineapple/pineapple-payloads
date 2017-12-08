#!/bin/bash

# Config Options
source $(dirname $(dirname $0))/payload/log.sh
# source $(dirname $(dirname $0))/payload/isroot.sh

# Functions
function generateMacAddress {
    cat /dev/urandom | grep -Eoa "[a-f0-9]" | head -12 | sed ':a;N;$!ba;s/\n//g' | sed 's/../&:/g;s/:$//'
}

function configureMacAddress {
    echo HERE 5
    ifconfig $1 hw ether $2
}

#####################################
# MAIN
#####################################
if [[ ! -z "$1" ]]; then 
    if [[ ! -z "$2" ]]; then
        echo HERE 1
        configureMacAddress $1 $2 || log err "could not change MAC Address for $1 to $2"
    else
        echo HERE 2
        echo configureMacAddress $1 $(generateMacAddress)
        configureMacAddress $1 $(generateMacAddress) #|| log err "could not change MAC Address for $1"
    fi
    echo HERE 
    ifconfig -a > /dev/null # this is required for the address to be changable at  later date.
fi