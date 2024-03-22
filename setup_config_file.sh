#!/usr/bin/env bash

set -euo pipefail

mkdir -p ./temp/
cat $CONFIG_FILE_PATH >> ./temp/config.toml
echo $(cat ./temp/config.toml)

if [[ ! $RUNNER_OS = "Windows" ]]; then 
    chmod 0600 ./temp/config.toml
fi

mkdir -p ~/.snowflake/
mv ./temp/config.toml ~/.snowflake/