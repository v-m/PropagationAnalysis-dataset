#!/bin/bash

array=($(ls */ -d))
for i in "${array[@]}"
do
	echo Processing $i
	cd $i/smf
	7z x mutations.7z
	rm mutations.7z
	cd ../..
done
