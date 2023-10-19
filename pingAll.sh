#!/bin/bash
source "../function.shlib"

remoteinterfaces=($(get_all_remote_array "interfaces"))
remotenet=($(get_all_remote_array "net"))
remotehost=($(get_all_remote_array "host"))

source "configVar.shlib"

echo "Pinging this machine interfaces and his Matching  one"

for ((i=0; i<${#interfaces[@]}; i++))
do
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




