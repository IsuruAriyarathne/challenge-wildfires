#!/bin/bash

cwd=$(pwd)
csvFiles="$cwd/datasetmodis/*.csv"

csvOutput="australia.csv"

rm -rf $csvOutput
touch $csvOutput

for file in $csvFiles
do
    echo "$file"
    cat $file >> $csvOutput
done

