#!/bin/sh

while IFS= read -r line || [[ -n "$line" ]]; do
    you-get -l "$line" &
done < $1
wait
