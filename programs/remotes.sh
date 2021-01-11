for d in */; do
	cd $d
	git remote get-url origin
	cd ..
done
