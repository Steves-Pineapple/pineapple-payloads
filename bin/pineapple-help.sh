#!/bin/bash

#  Config
readonly scriptBasename=$(basename $0 | rev | cut -c4- | rev)
source ../payload/helper.sh
ls ../payload/
ls ../
ls ..

if [[ "$1" == "-h" ]] || [[ "$1" == "--help" ]]; then
    readManual $scriptBasename
    exit 
fi

