#!/bin/sh

# Config Option
set -e 
source /opt/wifipineapple/payloads/macAddressToRandom.sh

# Variables
readonly interfaceToChange=$(cat /opt/wifipineapple/config/macAddressInterface)

#####################################
# MAIN
#####################################
[[ -z "$(ifconfig $interfaceToChange)" ]] ||  {
    log err "Interface $interfaceToChange is not currently up"
    exit 1
}
configureMacAddress $interfaceToChange || log err "could not randomise mac address"