#!/usr/bin/bash

echo "starting..."
export HOME=/home/wells/project/www.bitstring.xyz

MIX_ENV=prod mix compile

# bash assets/brunch_build.sh

MIX_ENV=prod mix phx.digest 

PORT=4000 MIX_ENV=prod mix phx.server

