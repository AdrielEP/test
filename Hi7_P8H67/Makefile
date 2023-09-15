#InterFace
if=enp1s0
F0=70
F1=72
MA=a0:36:9f:3c:e3:

net=10.2.
ipF0=$(net)10.$(F0)
ipF1=$(net)11.$(F1)
MTU=9000

#if f0/1
iff0=$(if)f0
iff1=$(if)f1

all: config test bench

config: configF0 configF1

configF0:
	echo "dot graph: iFf0[label=\""$(if)"f0: 10GEth IP="$(ipF0)" MAC="$(MA)$(F0)"\""
	sudo /sbin/ifconfig $(iff0) $(ipF0)/24
	sudo /sbin/ifconfig $(iff0) mtu $(MTU)
	/sbin/ifconfig $(iff0)

configF1:
	echo "dot graph: iFf1[label=\""$(if)"f1: 10GEth IP="$(ipF1)" MAC="$(MA)$(F1)"\""
	sudo /sbin/ifconfig $(iff1) $(ipF1)/24
	sudo /sbin/ifconfig $(iff1) mtu $(MTU)
	/sbin/ifconfig $(iff1)


test: testF0 testF1

testF0:
	fping $(ipF0) 10.2.10.48

testF1:
	fping $(ipF1) 10.2.11.49
