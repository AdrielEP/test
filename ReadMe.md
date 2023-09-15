# config

WinP

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
~~~

# graph

WinP

~~~ { .bash }
dot -Tps graph.dot > graph.ps && evince graph.ps &
~~~
