#!/bin/bash

# UU_VPN_CLIENT_PATH - default is /opt/cisco/anyconnect/bin/vpn
anyconnect_path=${UU_VPN_CLIENT_PATH-"/opt/cisco/anyconnect/bin/vpn"}

echo "Disconnecting vpn..."
eval "${anyconnect_path} -s disconnect"

echo "Killing port bindings..."
set +e
kill -9 $(lsof -i:5001 -t) 2> /dev/null
kill -9 $(lsof -i:5002 -t) 2> /dev/null
kill -9 $(lsof -i:5003 -t) 2> /dev/null
kill -9 $(lsof -i:8123 -t) 2> /dev/null
set -e
