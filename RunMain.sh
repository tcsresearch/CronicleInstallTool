#!/usr/bin/env bash

### RunMain.sh ###

# Before we can begin, we must run PreLoader to source our config and functions.
if [ -f PreLoader.sh ]; 
then
	echo "Running PreLoader..."
	sh PreLoader.sh
fi

### Call our functions ###

ShowConfigFileLocation

RunGithbInstall_Cronicle
RunGithubInstall_CronicleEdge

# Build and setup storage engine(s).
Build_Bundle


# Systemd Service Installation / Enable / Start / Status
InstallService
EnableService
# StartService
# StatusService

# Control.sh - Probably not needed.
Controlsh-Setup
Controlsh-Start
StatusService

# Notify of Web Admin URL.
NotifyWebAdminURL
