﻿#!/bin/sh

set -euo pipefail

echo "CLI VERSION: $CLI_VERSION"
echo "INSTALL_USING_PIPX: $INSTALL_USING_PIPX"
pipx list

if command -v snow &> /dev/null
then
    echo "Snowcli already installed"
    exit 0
fi

if [ "$INSTALL_USING_PIPX" == true ]; then
    installation_comand="pipx"
fi


if [ "$CLI_VERSION" == "" ]; then
    $installation_comand install snowflake-cli-labs 
else 
    $installation_comand install snowflake-cli-labs==$CLI_VERSION
fi