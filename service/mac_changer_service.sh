#!/bin/sh
# /etc/init.d/macChanger

### BEGIN INIT INFO
# Provides:          macChanger
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Simple script to start a program at boot
### END INIT INFO



# Config Option
set -e 
source /opt/wifipineapple/payloads/macAddressToRandom.sh

# Variables
readonly interfaceToChange=$(cat /opt/wifipineapple/config/macAddressInterface)

case "$1" in
  start)
    echo "Starting noip"
    # run application you want to start
    [[ -z "$(ifconfig $interfaceToChange)" ]] ||  {
        log err "Interface $interfaceToChange is not currently up"
        exit 1
    }
    configureMacAddress $interfaceToChange || log err "could not randomise mac address"
    ;;
  *)
    echo "Usage: /etc/init.d/noip {start}"
    exit 1
    ;;
esac

exit 0