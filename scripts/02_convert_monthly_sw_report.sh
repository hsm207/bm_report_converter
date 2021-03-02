#! /bin/bash

mkdir -p ./data
rm ./data/*

wget -P ./data $1

java -jar tabula.jar -b ./data \
    -a %13,0,95,100 \
    -l \
    -p all \
    -u \
    -g 

cat ./data/securities_equities_call_warrants_2021-02-28-19-00-03.csv | grep -v '""' > ./data/$2