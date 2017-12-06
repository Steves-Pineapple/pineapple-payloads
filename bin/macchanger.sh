#!/bin/bash

#  Config
readonly scriptBasename=$(basename $0 | rev | cut -c4- | rev)
source ../payload/helper.sh

if [[ "$1" == "-h" ]] || [[ "$1" == "--help" ]]; then
    readManual $scriptBasename
    exit 
fi

source ../payload/macAddressToRandom.sh

configureMacAddress $1 $2