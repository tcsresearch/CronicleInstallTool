#!/usr/bin/env bash
# shellcheck source=/dev/null

# PreLoader.sh
# This script will load our config and functions.
#
# Define Our Functions File
FuncFile="$(dirname $0)/PreLoader.bfunc"
if [ -f "$FuncFile" ]; then
    source "$FuncFile"
fi


PreLoader_Config
PreLoader_Functions
