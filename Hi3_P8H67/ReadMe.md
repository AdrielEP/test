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

### slot 2

black: empty

# networks

`ssh xubuntu22@192.168.1.101`

~~~ { .bash }
xubuntu22@u22-cuda:~$ ifconfig 
enp2s0f0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        ether 90:e2:ba:c6:be:48  txqueuelen 1000  (Ethernet)
        RX packets 35  bytes 7851 (7.8 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 86  bytes 14232 (14.2 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

enp2s0f1: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        ether 90:e2:ba:c6:be:49  txqueuelen 1000  (Ethernet)
        RX packets 37  bytes 8065 (8.0 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 84  bytes 13868 (13.8 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

enp5s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.1.101  netmask 255.255.255.0  broadcast 192.168.1.255
        inet6 fe80::7208:d5c4:2b92:e28b  prefixlen 64  scopeid 0x20<link>
        ether 14:da:e9:96:7d:d0  txqueuelen 1000  (Ethernet)
        RX packets 9130  bytes 12249428 (12.2 MB)
        RX errors 0  dropped 2  overruns 0  frame 0
        TX packets 5414  bytes 448436 (448.4 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 665  bytes 77210 (77.2 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 665  bytes 77210 (77.2 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

~~~
