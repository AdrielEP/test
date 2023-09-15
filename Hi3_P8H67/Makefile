#InterFace
if=enp1s0
net=10.2.
ipF0=$(net)1.48
ipF1=$(net)2.49

#if f0/1
iff0=$(if)f0
iff1=$(if)f1

all: config test bench

config: configF0 configF1

configF0:
	eth=$(iff0)
	echo sudo /sbin/ifconfig $(iff0) 10.2.1.86/24
	sudo /sbin/ifconfig $(iff0) mtu 9000
	/sbin/ifconfig $(iff0)
