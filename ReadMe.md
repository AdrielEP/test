bench ganP439 (U18) and ganL1401 (U22)

Intel 10GEth#2 and #3

# ganP439 (U18)

`ssh ubuntu@193.48.111.160`

## config

~~~ { .bash }
cd ~/tranceivers/GANP439/
git checkout bench_P439U18_L1401U22

sudo systemctl stop NetworkManager.service
sudo iftop -B -i enp6s0f1

ubuntu@LinuxD:~/tranceivers/GANP439$ ./config.sh 
Configuration of the network card
enp6s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet6 fe80::44a2:d601:b1a0:c89a  prefixlen 64  scopeid 0x20<link>
        ether 00:13:3b:21:c7:2f  txqueuelen 1000  (Ethernet)
        RX packets 157  bytes 34858 (34.8 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 423  bytes 70863 (70.8 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

Settings for enp6s0:
	Supported ports: [ TP MII ]
	Supported link modes:   10baseT/Half 10baseT/Full 
	                        100baseT/Half 100baseT/Full 
	                        1000baseT/Half 1000baseT/Full 
	Supported pause frame use: Symmetric Receive-only
	Supports auto-negotiation: Yes
	Supported FEC modes: Not reported
	Advertised link modes:  10baseT/Half 10baseT/Full 
	                        100baseT/Half 100baseT/Full 
	                        1000baseT/Half 1000baseT/Full 
	Advertised pause frame use: Symmetric Receive-only
	Advertised auto-negotiation: Yes
	Advertised FEC modes: Not reported
	Link partner advertised link modes:  10baseT/Half 10baseT/Full 
	                                     100baseT/Half 100baseT/Full 
	                                     1000baseT/Full 
	Link partner advertised pause frame use: Symmetric Receive-only
	Link partner advertised auto-negotiation: Yes
	Link partner advertised FEC modes: Not reported
	Speed: 1000Mb/s
	Duplex: Full
	Port: MII
	PHYAD: 0
	Transceiver: internal
	Auto-negotiation: on
Cannot get wake-on-lan settings: Operation not permitted
	Current message level: 0x00000033 (51)
			       drv probe ifdown ifup
	Link detected: yes
10.2.1.21 is alive
10.2.1.86 is alive
enp5s0f0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 10.2.10.38  netmask 255.255.255.0  broadcast 10.2.10.255
        inet6 fe80::91ea:a1d0:1559:c6c9  prefixlen 64  scopeid 0x20<link>
        ether a0:36:9f:24:53:e8  txqueuelen 1000  (Ethernet)
        RX packets 171  bytes 37485 (37.4 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 439  bytes 71704 (71.7 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

Settings for enp5s0f0:
	Supported ports: [ FIBRE ]
	Supported link modes:   10000baseT/Full 
	Supported pause frame use: Symmetric
	Supports auto-negotiation: No
	Supported FEC modes: Not reported
	Advertised link modes:  10000baseT/Full 
	Advertised pause frame use: Symmetric
	Advertised auto-negotiation: No
	Advertised FEC modes: Not reported
	Speed: 10000Mb/s
	Duplex: Full
	Port: Direct Attach Copper
	PHYAD: 0
	Transceiver: internal
	Auto-negotiation: off
Cannot get wake-on-lan settings: Operation not permitted
	Current message level: 0x00000007 (7)
			       drv probe link
	Link detected: yes
10.2.10.38 is alive
10.2.10.84 is alive
enp5s0f1: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 10.2.11.34  netmask 255.255.255.0  broadcast 10.2.11.255
        inet6 fe80::74ce:3d90:b725:13e8  prefixlen 64  scopeid 0x20<link>
        ether a0:36:9f:24:53:ea  txqueuelen 1000  (Ethernet)
        RX packets 168  bytes 36844 (36.8 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 442  bytes 72565 (72.5 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

Settings for enp5s0f1:
	Supported ports: [ FIBRE ]
	Supported link modes:   10000baseT/Full 
	Supported pause frame use: Symmetric
	Supports auto-negotiation: No
	Supported FEC modes: Not reported
	Advertised link modes:  10000baseT/Full 
	Advertised pause frame use: Symmetric
	Advertised auto-negotiation: No
	Advertised FEC modes: Not reported
	Speed: 10000Mb/s
	Duplex: Full
	Port: Direct Attach Copper
	PHYAD: 0
	Transceiver: internal
	Auto-negotiation: off
Cannot get wake-on-lan settings: Operation not permitted
	Current message level: 0x00000007 (7)
			       drv probe link
	Link detected: yes
10.2.11.34 is alive
10.2.11.86 is alive
Interfaces setup
~~~

## iperf

~~~ { .bash }
iperf -c 10.2.11.86
~~~

~~~ { .text }
------------------------------------------------------------
Client connecting to 10.2.11.86, TCP port 5001
TCP window size: 85.0 KByte (default)
------------------------------------------------------------
[  3] local 10.2.11.34 port 48774 connected with 10.2.11.86 port 5001
[ ID] Interval       Transfer     Bandwidth
[  3]  0.0-10.0 sec  10.9 GBytes  9.40 Gbits/sec
~~~

~~~ { .text }
                         46,6MB                   93,2MB                   140MB                    186MB
└────────────────────────┴────────────────────────┴────────────────────────┴────────────────────────┴─────────────────────────













──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
TX:             cum:   11,0GB   peak:      0B                                                 rates:      0B      0B      0B
RX:                    15,3MB              0B                                                             0B      0B      0B
TOTAL:                 11,0GB              0B                                                             0B      0B      0B 
~~~



# ganL1401 (U22)

`ssh ubuntu22@172.16.110.36`

## config

~~~ { .bash }
cd ~/tranceivers/GANL1401/
git checkout bench_P439U18_L1401U22

sudo systemctl stop NetworkManager.service
sudo iftop -B -i enp6s0f1

ubuntu22@ubuntu22:~/tranceivers/GANL1401$ ./config.sh 
Configuration of the network card
enp5s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet6 fe80::3e03:def3:2aae:a3e1  prefixlen 64  scopeid 0x20<link>
        ether 00:0a:cd:42:95:86  txqueuelen 1000  (Ethernet)
        RX packets 178  bytes 41341 (41.3 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 326  bytes 51995 (51.9 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

Settings for enp5s0:
	Supported ports: [ TP	 MII ]
	Supported link modes:   10baseT/Half 10baseT/Full
	                        100baseT/Half 100baseT/Full
	                        1000baseT/Full
	                        2500baseT/Full
	Supported pause frame use: Symmetric Receive-only
	Supports auto-negotiation: Yes
	Supported FEC modes: Not reported
	Advertised link modes:  10baseT/Half 10baseT/Full
	                        100baseT/Half 100baseT/Full
	                        1000baseT/Full
	                        2500baseT/Full
	Advertised pause frame use: Symmetric Receive-only
	Advertised auto-negotiation: Yes
	Advertised FEC modes: Not reported
	Link partner advertised link modes:  10baseT/Half 10baseT/Full
	                                     100baseT/Half 100baseT/Full
	                                     1000baseT/Half 1000baseT/Full
	Link partner advertised pause frame use: Symmetric Receive-only
	Link partner advertised auto-negotiation: Yes
	Link partner advertised FEC modes: Not reported
	Speed: 1000Mb/s
	Duplex: Full
	Auto-negotiation: on
	master-slave cfg: preferred slave
	master-slave status: master
	Port: Twisted Pair
	PHYAD: 0
	Transceiver: external
	MDI-X: Unknown
netlink error: Operation not permitted
	Link detected: yes
10.2.1.86 is alive
10.2.1.21 is alive
enp6s0f0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet6 fe80::e8a1:7263:b556:18e9  prefixlen 64  scopeid 0x20<link>
        ether a0:36:9f:26:8f:84  txqueuelen 1000  (Ethernet)
        RX packets 161  bytes 37284 (37.2 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 331  bytes 52624 (52.6 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

Settings for enp6s0f0:
	Supported ports: [ FIBRE ]
	Supported link modes:   10000baseT/Full
	Supported pause frame use: Symmetric
	Supports auto-negotiation: No
	Supported FEC modes: Not reported
	Advertised link modes:  10000baseT/Full
	Advertised pause frame use: Symmetric
	Advertised auto-negotiation: No
	Advertised FEC modes: Not reported
	Speed: 10000Mb/s
	Duplex: Full
	Auto-negotiation: off
	Port: Direct Attach Copper
	PHYAD: 0
	Transceiver: internal
netlink error: Operation not permitted
        Current message level: 0x00000007 (7)
                               drv probe link
	Link detected: yes
10.2.10.84 is alive
10.2.10.38 is alive
enp6s0f1: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 10.2.11.86  netmask 255.255.255.0  broadcast 10.2.11.255
        inet6 fe80::f295:6ac8:8c59:a8e0  prefixlen 64  scopeid 0x20<link>
        ether a0:36:9f:26:8f:86  txqueuelen 1000  (Ethernet)
        RX packets 166  bytes 38621 (38.6 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 323  bytes 51629 (51.6 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

Settings for enp6s0f1:
	Supported ports: [ FIBRE ]
	Supported link modes:   10000baseT/Full
	Supported pause frame use: Symmetric
	Supports auto-negotiation: No
	Supported FEC modes: Not reported
	Advertised link modes:  10000baseT/Full
	Advertised pause frame use: Symmetric
	Advertised auto-negotiation: No
	Advertised FEC modes: Not reported
	Speed: 10000Mb/s
	Duplex: Full
	Auto-negotiation: off
	Port: Direct Attach Copper
	PHYAD: 0
	Transceiver: internal
netlink error: Operation not permitted
        Current message level: 0x00000007 (7)
                               drv probe link
	Link detected: yes
10.2.11.86 is alive
10.2.11.34 is alive
Interfaces setup
~~~

## iperf

~~~ { .bash }
iperf -s
~~~

~~~ { .text }
------------------------------------------------------------
Server listening on TCP port 5001
TCP window size:  128 KByte (default)
------------------------------------------------------------
[  1] local 10.2.11.86 port 5001 connected with 10.2.11.34 port 48770
[ ID] Interval       Transfer     Bandwidth
[  1] 0.0000-10.0055 sec  10.9 GBytes  9.39 Gbits/sec
[  2] local 10.2.11.86 port 5001 connected with 10.2.11.34 port 48774
[ ID] Interval       Transfer     Bandwidth
[  2] 0.0000-10.0031 sec  10.9 GBytes  9.40 Gbits/sec
~~~

~~~ { .text }
                         238MB                    477MB                    715MB                    954MB               1,16GB
└────────────────────────┴────────────────────────┴────────────────────────┴────────────────────────┴─────────────────────────













──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
TX:             cum:   15,3MB   peak:      0B                                                 rates:      0B      0B      0B
RX:                    11,0GB              0B                                                             0B      0B      0B
TOTAL:                 11,0GB              0B                                                             0B      0B      0B 
~~~

