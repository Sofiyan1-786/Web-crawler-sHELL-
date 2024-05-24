#!/bin/bash
max_downloads=10000000000000000000000
urls=("$@")

for url in "${urls[@]}"; do
    # Spider not only to check if the url is possible or not but to also look if it contains images
    if ! wget --spider -q "$url"; then
        echo "NO ACCESS $url"
        continue
    fi

    file=$(basename "$url")
    # if the spider inspection indicates that it contains no file then we will add .html to the file
    if [[ ! "$file" =~ \.jpg$ ]] && [[ ! "$file" =~ \.png$ ]] && [[ ! "$file" =~ \.gif$ ]]; then
        file="$file.html"
    fi
    if [ ! -f "$file" ]; then
        echo "PROGRESS TOWARDS DOWNLOAD $url"
        wget -v -O "$file" "$url"
        # Check if wget was successful
        if [ $? -ne 0 ]; then
            echo "FAILED; FILE MAYNOT BE ACCESSIBLE OR CHECK YOUR CONNECTION $url"
            continue
        fi
        echo "FINISHED DOWNLOADING $url"
    else
        echo "File $file exists in the current directory no overwriting please."
    fi
done