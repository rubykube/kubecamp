#!/bin/bash

if [ "$#" -ne 4 ]; then
    echo "Usage: $0 filename keyword1 keyword2 keyword3"
    exit 1
fi

filename=$1
keyword1=$2
keyword2=$3
keyword3=$4

if [ ! -f "$filename" ]; then
    echo "File '$filename' not found!"
    exit 1
fi


search_keyword() {
    local keyword=$1
    echo "Keyword: $keyword"
    count=$(grep -c "$keyword" "$filename")
    echo "Number of matches: $count"
    grep -n "$keyword" "$filename" || true
    echo
}

search_keyword "$keyword1"
search_keyword "$keyword2"
search_keyword "$keyword3"
