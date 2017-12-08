#!/bin/bash

#  Config
readonly scriptBasename=$(basename $0 | rev | cut -c4- | rev)
source $(dirname $(dirname $0))/payload/helper.sh
iface=$1

if [[ "$1" == "-h" || "$1" == "--help" ]] && [[ ! -z $1 ]]; then
    readManual $scriptBasename
    exit 
fi

shift $1
echo $1
source $(dirname $(dirname $0))/payload/macAddressToRandom.sh

configureMacAddress $iface $2