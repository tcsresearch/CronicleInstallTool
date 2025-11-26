# PreLoader.sh
# This script will load our config and functions.
#
if [ -f $(dirname "$0")/PreLoader.bfunc ]; then 
	source $(dirname "$0")/PreLoader.bfunc
fi

PreLoader_Config
PreLoader_Functions
