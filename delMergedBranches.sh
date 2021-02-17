#!/bin/bash

BRANCHES=( $(git branch -r --merged origin/master | grep origin | grep -v '>' | grep -v master | sed -e "s/origin\/\(.*\)/\1/g") )
echo "-- List branches merged to master --";
for branch in "${BRANCHES[@]}" ; do
    echo $branch
done;

