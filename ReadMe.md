# config

## i3

~~~ { .bash }
ssh xubuntu22@192.168.1.101
cd ~/bench/transceivers/Hi3_P8H67/
git pull
make config
~~~

## i7

~~~ { .bash }
ssh ubuntu22@192.168.1.103
cd ~/bench/transceivers/Hi7_P8H67/
git pull
make config
~~~

# test

~~~ { .bash }
fping 10.2.10.48 10.2.10.70
fping 10.2.11.49 10.2.11.72
#or
make test
~~~

# bench

## iperf

`sudo apt install -y iperf`

### i3

~~~ { .bash }
xubuntu22@u22-cuda:~/bench/transceivers/Hi3_P8H67$ 
iperf -s

------------------------------------------------------------
Server listening on TCP port 5001
TCP window size:  128 KByte (default)
------------------------------------------------------------
[  1] local 10.2.10.48 port 5001 connected with 10.2.10.70 port 52334
[ ID] Interval       Transfer     Bandwidth
[  1] 0.0000-10.0022 sec  11.5 GBytes  9.90 Gbits/sec
[  2] local 10.2.11.49 port 5001 connected with 10.2.11.72 port 32784
[ ID] Interval       Transfer     Bandwidth
[  2] 0.0000-10.0029 sec  11.5 GBytes  9.90 Gbits/sec


[  5] local 10.2.11.49 port 5001 connected with 10.2.11.72 port 44918
[ ID] Interval       Transfer     Bandwidth
[  5] 0.0000-10.0004 sec  3.12 GBytes  2.68 Gbits/sec
~~~

### i7

~~~ { .bash }
iperf -c 10.2.10.48

------------------------------------------------------------
Client connecting to 10.2.10.48, TCP port 5001
TCP window size:  325 KByte (default)
------------------------------------------------------------
[  1] local 10.2.10.70 port 52334 connected with 10.2.10.48 port 5001
[ ID] Interval       Transfer     Bandwidth
[  1] 0.0000-11.0133 sec  11.5 GBytes  8.99 Gbits/sec

ubuntu22@XU22-GPU:~/bench/transceivers/Hi7_P8H67$ 
iperf -c 10.2.11.49
------------------------------------------------------------
Client connecting to 10.2.11.49, TCP port 5001
TCP window size:  325 KByte (default)
------------------------------------------------------------
[  1] local 10.2.11.72 port 32784 connected with 10.2.11.49 port 5001
[ ID] Interval       Transfer     Bandwidth
[  1] 0.0000-10.0128 sec  11.5 GBytes  9.89 Gbits/sec


ubuntu22@XU22-GPU:~/bench/transceivers/Hi7_P8H67$ iperf -c 10.2.11.49 --window 8k
------------------------------------------------------------
Client connecting to 10.2.11.49, TCP port 5001
TCP window size: 15.6 KByte (WARNING: requested 7.81 KByte)
------------------------------------------------------------
[  1] local 10.2.11.72 port 44918 connected with 10.2.11.49 port 5001
[ ID] Interval       Transfer     Bandwidth
[  1] 0.0000-10.0045 sec  3.12 GBytes  2.68 Gbits/sec
~~~

# graph

~~~ { .bash }
dot -Tps graph.dot > graph.ps && evince graph.ps &
#or
make view
~~~
