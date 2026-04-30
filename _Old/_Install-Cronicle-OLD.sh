#!/usr/bin/env bash

# Install Cronicle From Github
echo "Running Initial Installation From GitHub..."
curl -s https://raw.githubusercontent.com/jhuckaby/Cronicle/master/bin/install.js | node 

# Enable Cronicle Service
echo "[SERVICE] Enabling Cronicle..."
systemctl enable cronicle

# Start Cronicle Service
## DISABLED - Not needed.  Using control.sh instead.
## echo "[SERVICE] Starting Cronicle..."
## systemctl start cronicle

# Get Cronicle Service Status
## DISABLED - Not needed.  Using control.sh instead.
##echo "[SERVICE] Checking Cronicle Service Status..."
## systemctl status cronicle

# Configure Cronicle
# Assign Variables
Cronicle_MainPath = '/opt/cronicle'
Cronicle_ConfigPath = '/opt/cronicle/conf'
Cronicle_ConfigFile = '/opt/cronicle/conf/config.json'
Cronicle_BinPath = '/opt/cronicle/bin'
Cronicle_ControlFile = '/opt/cronicle/bin/control.sh'
#

# Notify of config file location
echo "Config File: $Cronicle_ConfigFile"

# control.sh - Setup Cronicle
echo "[Control] Running Cronicle Setup..."
# /opt/cronicle/bin/control.sh setup
# $Cronicle_BinPath/control.sh setup
$Cronicle_ControlFile setup


# control.sh - Start Cronicle
echo "[Control] Starting Cronicle..."
# /opt/cronicle/bin/control.sh start
# $Cronicle_BinPath/control.sh start
$Cronicle_ControlFile start

# Notify of Web Admin URL 
echo "You may now access Cronicle via the web admin interface at: 127.0.0.1:3012."
echo "User/Pass: admin/admin"
