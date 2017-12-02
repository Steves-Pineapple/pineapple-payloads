#!/bin/bash 

# Checking to make sure script is run as root
if [[ $EUID -ne 0 ]]; then
   log err "This script must be run as root" 
   exit 1
fi
