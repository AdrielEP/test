#!/bin/bash
source "../function.shlib"

remotepath=$(get_remote_path)
source "$remotepath/configVar.shlib"

remoteinterfaces=($(get_all_remote_array "interfaces"))
remotenet=($(get_all_remote_array "net"))
remotehost=($(get_all_remote_array "host"))

source "configVar.shlib"

for i in $*;do
    echo "----------------------------"
    echo "Pinging the local interface"
    echo "----------------------------"
    echo "It's ${interfaces[$i]}   interface  "
    echo "with IP: ${net[$i]}.${host[$i]}"
    ping "${net[$i]}.${host[$i]}"

    echo "----------------------------"
    echo "Pinging the corresponding interface on the remote machine"
    echo "----------------------------"
    echo "It's ${remoteinterfaces[$i]}   interface"
    echo "with IP: ${remotenet[$i]}.${remotehost[$i]}"
    ping "${remotenet[$i]}.${remotehost[$i]}"
done