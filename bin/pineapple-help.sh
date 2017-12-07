#!/bin/bash

#  Config
readonly scriptBasename=$(basename $0 | rev | cut -c4- | rev)
source $(dirname $(dirname $0))/payload/helper.sh

if [[ "$1" == "-h" ]] || [[ "$1" == "--help" ]]; then
    readManual $scriptBasename
    exit 
fi

for f in $(dirname $(dirname $0))/bin/*.sh; do
    readManual $(echo $f)
done