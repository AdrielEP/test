all: graph_vector graph_pixel

#vector image
graph_vector:
	dot -Tps graphInfra.dot > graphInfra.ps
	evince   graphInfra.ps

#pixel  image
graph_pixel:
	dot -Tpng graphInfra.dot > graphInfra.png
	display graphInfra.png

#print  image
graph_print:
	rsync graphInfra.png coudert@193.48.111.15:/tmp/
	ssh coudert@193.48.111.15 "lpr -Pcopieur_BAS /tmp/graphInfra.png"
