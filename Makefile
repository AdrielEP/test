all: graph view

graph:
	dot -Tps graph.dot > graph.ps

view: graph
	 evince graph.ps &
