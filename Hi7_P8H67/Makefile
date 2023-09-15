#InterFace
if=enp1s0
net=10.2.
ipF0=$(net)10.70
ipF1=$(net)11.72
MTU=9000

#if f0/1
iff0=$(if)f0
iff1=$(if)f1

all: config test bench

config: configF0 configF1

configF0:
	echo eth=$(iff0)
	sudo /sbin/ifconfig $(iff0) $(ipF0)/24
	sudo /sbin/ifconfig $(iff0) mtu $(MTU)
	/sbin/ifconfig $(iff0)

configF1:
	echo eth=$(iff1)
	sudo /sbin/ifconfig $(iff1) $(ipF1)/24
	sudo /sbin/ifconfig $(iff1) mtu $(MTU)
	/sbin/ifconfig $(iff1)


test: testF0 testF1

testF0:
	fping $(ipF0) 10.2.10.48

testF1:
	fping $(ipF1) 10.2.11.49
