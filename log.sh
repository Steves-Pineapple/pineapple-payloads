#!/bin/bash 

##################################
#        Global Variables        #
##################################
old=""
wireless=""
debugMode="$1"

readonly thisScript=$(basename $0 | sed 's/\.sh//g')
readonly default="\033[39m"
readonly black="\033[30m"
readonly red="\033[31m"
readonly green="\033[32m"
readonly yellow="\033[33m"
readonly blue="\033[34m"
readonly argsLength=$#


##################################
#           Functions            #
##################################
function log () {
    case "$1" in
        err)
            echo -e    "$red[$( date )] [$(basename $0)] [ERROR  ]$default $2" | tee -a /tmp/$(basename $0).log
            ;;
        info)
              echo -e "$blue[$( date )] [$(basename $0)] [INFO   ]$default $2" | tee -a /tmp/$(basename $0).log
            ;;
        scss)
             echo -e "$green[$( date )] [$(basename $0)] [SUCCESS]$default $2" | tee -a /tmp/$(basename $0).log
            ;;
        warn)
            echo -e "$yellow[$( date )] [$(basename $0)] [WARNING]$default $2" | tee -a /tmp/$(basename $0).log
            ;;
        dbg)
            if [[ "$debugMode" == "debug" || "$debugMode" == "-d" ]]; then
                echo -e "$yellow[$( date )] [$(basename $0)] [DEBUG  ]$default $2" | tee -a /tmp/$(basename $0).log
            fi
            ;;
    esac
}
