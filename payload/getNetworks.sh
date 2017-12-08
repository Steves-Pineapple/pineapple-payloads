#!/bin/bash
# Config Options
set -e
source $(dirname $0)/log.sh
# source $(dirname $0)/isroot.sh

# VARIABLES


#  Functions
function scan {
    sudo iwlist $1 scanning | egrep 'Cell |Encryption|WPA\d? Version|Group Cipher|Pairwise Ciphers|Authentication Suites|Quality|Last beacon|ESSID' | sed 's/ - /\n/g' | sed -E 's/^\s*?/\n/g' | egrep -v '^$' | sed -E 's/Cell.*/=========================================/g'
}

#####################################
# MAIN
#####################################
[[ -z $1 ]] &&   log err "Please check interface." && exit 1
scan $1 








