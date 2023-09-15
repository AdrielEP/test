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


# graph

WinP

~~~ { .bash }
dot -Tps graph.dot > graph.ps && evince graph.ps &
~~~
