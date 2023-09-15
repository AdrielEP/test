# hardware

- mother board: ASUS P8H67
- CPU: i3-2120
- 8GB DDR3
- iGPU
- OS: xubuntu22

## PCIe

### slot 1

blue: Intel 10GEth #0

`F0`=*`:48`
`F1`=*`:49`

note: graph annotate `i0f0` and `i0f1`

### slot 2

black: empty

# networks

`ssh xubuntu22@192.168.1.101`

~~~ { .bash }
xubuntu22@u22-cuda:~$ ifconfig 
ifconfig 
enp1s0f0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        ether 90:e2:ba:c6:be:48  txqueuelen 1000  (Ethernet)
        RX packets 70  bytes 16270 (16.2 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 169  bytes 27672 (27.6 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

enp1s0f1: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        ether 90:e2:ba:c6:be:49  txqueuelen 1000  (Ethernet)
        RX packets 71  bytes 16472 (16.4 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 167  bytes 27495 (27.4 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

enp5s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.1.101  netmask 255.255.255.0  broadcast 192.168.1.255
        inet6 fe80::7208:d5c4:2b92:e28b  prefixlen 64  scopeid 0x20<link>
        ether 14:da:e9:96:7d:d0  txqueuelen 1000  (Ethernet)
        RX packets 2028  bytes 725037 (725.0 KB)
        RX errors 0  dropped 6  overruns 0  frame 0
        TX packets 1871  bytes 234779 (234.7 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 1168  bytes 133519 (133.5 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 1168  bytes 133519 (133.5 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
~~~
