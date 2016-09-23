default:
	rm -rf output
	mkdir output
	dot -Tpng -o output/all.png ./all-states.dot
	dot -Tpng -o output/all-happy-subset.png -Glayerselect=happy ./all-states.dot
	dot -Tpng -o output/happy.png ./happy.dot
	dot -Tpng -o output/toplevel.png ./toplevel.dot
	dot -Tpng -o output/create-stack.png ./create-stack.dot
	dot -Tpng -o output/update-stack.png ./update-stack.dot
	dot -Tpng -o output/delete-stack.png ./delete-stack.dot
