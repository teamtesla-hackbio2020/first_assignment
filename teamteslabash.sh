#!/bin/bash

git clone https://github.com/teamtesla-hackbio2020/team-tesla.git

cd team-tesla

for file in $(ls);

do
	if [[ $file == *.py ]];
	then
		python $file >> ../tesla.csv
	elif [[ $file == *.rb ]];
	then
		ruby $file >> ../tesla.csv
	elif [[ $file == *.c || $file == *.cpp ]];
	then
		g++ $file 
		./a.out >> ../tesla.csv
		rm a.out
	
	elif [[ $file == *.cs ]];
	then
		csc $file 
		./a.out >> ../tesla.csv
		rm a.out

	elif [[ $file == *.pl ]];
	then
		perl $file >> ../tesla.csv
	elif [[ $file == *.js ]];
	then
		node $file >> ../tesla.csv

	elif [[ $file == *.dart ]];
	then
		dart $file >> ../tesla.csv

	elif [[ $file == *.java ]];
        then
                javac $file
		fname=`echo $file | cut -d\. -f1`
		java $fname >> ../tesla.csv
	fi
done
