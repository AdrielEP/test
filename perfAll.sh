#!/bin/bash
source "../function.shlib"

remoteinterfaces=($(get_all_remote_array "interfaces"))
remotenet=($(get_all_remote_array "net"))
remotehost=($(get_all_remote_array "host"))
remoteusername=$(get_remote_username)

source "configVar.shlib"

#     ssh  $machineName$IP${trimedList[0]} '
#     echo $(cd transceivers)
#     echo $(iperf -s | exit )
#     '

xfce4-terminal --hold -e "ssh -t $remoteusername${remotenet[0]}.${remotehost[0]} '
                                                                                iperf -s -D &&
                                                                                sleep 40 &&
                                                                                echo 'the iperf server is kill, you can close the window' 
                                                                                pkill -f iperf 
                                                                                '
"

sleep 10

echo "-----Bandwith test----" > perfResult.txt
for((i=0;i<${#interfaces[@]};i++));do
    echo "Bandwith test  in progress"
    echo "
    Testing from interface ${interfaces[$i]} to ${remoteinterfaces[$i]}
    " >> perfResult.txt
    iperf -c ${remotenet[$i]}.${remotehost[$i]} >> perfResult.txt
done
echo "Bandwith test done"
cat perfResult.txt