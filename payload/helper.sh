#!/bin/bash

function readManual {
    cat $(dirname $(dirname $0))/man/$1
}

