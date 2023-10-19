
all: setup pingAll perfAll

#setup interface
setup: ../function.shlib ../setup.sh
	../setup.sh

#ping local and remote interfaces on the same array position
ping : ../function.shlib ../ping.sh
	../ping.sh $(ARGS)

#ping all interfaces
pingAll:	../function.shlib ../pingAll.sh
	../pingAll.sh

perfAll: 	../function.shlib ../perfAll.sh
	../perfAll.sh