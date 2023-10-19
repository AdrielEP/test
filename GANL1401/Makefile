
all: setup ping perf

#setup interface
setup: ../function.shlib ../setup.sh
	../setup.sh

#ping both interfaces
ping:	../function.shlib ../isAlive.sh
	../isAlive.sh

perf: 	../function.shlib perf.sh
	./perf.sh