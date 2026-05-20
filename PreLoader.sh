#!/usr/bin/env bash
# shellcheck source=/dev/null

# PreLoader.sh
# This script will load our config and functions.
#
# Define Our Functions File
## DISABLED: FuncFile="$(dirname $0)/PreLoader.bfunc"
FuncFile="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/PreLoader.bfunc" # Test 05/20/26

if [ -f "$FuncFile" ]; then
    source "$FuncFile"
fi


PreLoader_Config
PreLoader_Functions
