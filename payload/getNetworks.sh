#!/bin/bash
# Config Options
set -e
source $(dirname $(dirname $0))/log.sh
source $(dirname $(dirname $0))/isroot.sh

# VARIABLES


#  Functions
function scan {
    iwlist $1 scanning | egrep 'Cell |Encryption|Quality|Last beacon|ESSID' | sed 's/ - /\n/g' | sed -E 's/^\s*?/\n/g' | egrep -v '^$'
}

#####################################
# MAIN
#####################################
scan $1 || log err "Please check interface."