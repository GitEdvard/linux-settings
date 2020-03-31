#!/bin/bash

# UU_VPN_CLIENT_PATH - default is /opt/cisco/anyconnect/bin/vpn
anyconnect_path=${UU_VPN_CLIENT_PATH-"/opt/cisco/anyconnect/bin/vpn"}

echo "Disconnecting vpn..."
eval "${anyconnect_path} -s disconnect"

