# hardware

- mother board: ASUS P8H67
- CPU: i7-2600
- 12GB DDR3
- iGPU
- OS: ubuntu22

## PCIe

### slot 1

blue: Intel 10GEth #1

`F0`=*`:70`
`F1`=*`:72`

note: graph annotate `i1f0` and `i1f1`

### slot 2

black: empty

# networks

`ssh ubuntu22@192.168.1.103`

~~~ { .bash }
ubuntu22@XU22-GPU:~$ ifconfig 
enp1s0f0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        ether a0:36:9f:3c:e3:70  txqueuelen 1000  (Ethernet)
        RX packets 39  bytes 9353 (9.3 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 377  bytes 60849 (60.8 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

enp1s0f1: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        ether a0:36:9f:3c:e3:72  txqueuelen 1000  (Ethernet)
        RX packets 39  bytes 9353 (9.3 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 376  bytes 60963 (60.9 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

enp5s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.1.103  netmask 255.255.255.0  broadcast 192.168.1.255
        inet6 fe80::c0c7:4978:38df:b5e5  prefixlen 64  scopeid 0x20<link>
        ether 54:04:a6:68:18:40  txqueuelen 1000  (Ethernet)
        RX packets 46281  bytes 63679679 (63.6 MB)
        RX errors 0  dropped 10  overruns 0  frame 0
        TX packets 25701  bytes 2084442 (2.0 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 341  bytes 37031 (37.0 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 341  bytes 37031 (37.0 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
~~~
