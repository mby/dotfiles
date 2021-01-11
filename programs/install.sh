for d in */; do
	cd $d
	sudo make clean install
	cd ..
done
