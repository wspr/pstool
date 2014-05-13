#!/bin/sh

for dir in ./*/
do
    (cd "$dir"; sh test.sh)
done

