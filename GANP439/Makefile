
all: setup ping

#setup interface
setup: ../function.shlib config.sh
	./config.sh


#ping both interfaces
ping:	../function.shlib isAlive.sh
	./isAlive.sh

perf: 	../function.shlib perf.sh
	./perf.sh