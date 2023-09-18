bench ganP439 (U18) and ganL1401 (U22)

Intel 10GEth#2 and #3

# ToDo

0. shLib: function with args
1. shLib functions: service, setup, ping, perf (iPerf), perf_nc, perf_live (RSync)
1. make functions and graph
1. shLib: may integrate graph lines (for auto-graph)



# graph

~~~ { .bash }
#vector image
dot -Tps  graphInfra.dot > graphInfra.ps  && evince  graphInfra.ps

#pixel  image
dot -Tpng graphInfra.dot > graphInfra.png && display graphInfra.png
rsync graphInfra.png coudert@193.48.111.15:/tmp/
ssh coudert@193.48.111.15 "lpr -Pcopieur_BAS /tmp/graphInfra.png"
~~~

# ganP439 (U18)

`ssh ubuntu@193.48.111.160`

## repository

~~~ { .bash }
cd ~/tranceivers/
grep url .git/config 
        url = ubuntu22@172.16.110.36:~/transceivers
#SWAP   url = git@gitlab.in2p3.fr:Ganil-acq/Embedded/REActif/hacktif/transceivers
~~~

## config

~~~ { .bash }
cd ~/tranceivers/GANP439/
git checkout bench_P439U18_L1401U22

sudo systemctl stop NetworkManager.service
sudo iftop -B -i enp6s0f1

ubuntu@LinuxD:~/tranceivers/GANP439$ ./config.sh | tee config.log
~~~

## iperf

~~~ { .bash }
iperf -c 10.2.11.86
~~~

~~~ { .text }
~~~

~~~ { .text }
~~~



# ganL1401 (U22)

`ssh ubuntu22@172.16.110.36`

## repository

~~~ { .bash }
cd ~/tranceivers/
grep url .git/config 
        url = ubuntu@193.48.111.160:~/transceivers
#SWAP   url = git@gitlab.in2p3.fr:Ganil-acq/Embedded/REActif/hacktif/transceivers
~~~

## config

~~~ { .bash }
cd ~/tranceivers/GANL1401/
git checkout bench_P439U18_L1401U22

sudo systemctl stop NetworkManager.service
sudo iftop -B -i enp6s0f1

ubuntu22@ubuntu22:~/tranceivers/GANL1401$ ./config.sh | tee config.log
~~~

## iperf

~~~ { .bash }
iperf -s
~~~

~~~ { .text }
~~~

~~~ { .text }
~~~

# misc

## repositories

# ganP439 (U18)

~~~ { .bash }
cd ~/tranceivers/

ubuntu@LinuxD:~/transceivers$ ./git_swap_origin.sh 
        url = ubuntu22@172.16.110.36:~/transceivers
#SWAP   url = git@gitlab.in2p3.fr:Ganil-acq/Embedded/REActif/hacktif/transceivers
ubuntu@LinuxD:~/transceivers$ git pull
ubuntu22@172.16.110.36's password: 
From 172.16.110.36:~/transceivers
 + 9d6ea59...2b9ee36 bench_P439U18_L1401U22 -> origin/bench_P439U18_L1401U22  (forced update)
 + 98939a3...dc9c477 main                   -> origin/main  (forced update)
Already up to date.
ubuntu@LinuxD:~/transceivers$ ./git_swap_origin.sh 
#SWAP   url = ubuntu22@172.16.110.36:~/transceivers
        url = git@gitlab.in2p3.fr:Ganil-acq/Embedded/REActif/hacktif/transceivers
ubuntu@LinuxD:~/transceivers$ git push --all
Everything up-to-date
~~~
