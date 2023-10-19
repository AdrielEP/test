
all: setup pingAll perf

#setup interface
setup: ../function.shlib ../setup.sh
	../setup.sh


#ping all interfaces
pingAll:	../function.shlib ../pingAll.sh
	../pingAll.sh

perf: 	../function.shlib perf.sh
	./perf.sh