#!/bin/bash

# This script is used by the installer/uninstaller to 
# update the .dbm file association by using pgmodeler-cli.

# Loading needed environment variables
source "./pgmodeler.vars"

$PGMODELER_CLI_PATH "--dbm-mime-type" "$@"
