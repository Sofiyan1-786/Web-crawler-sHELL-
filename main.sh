#!/bin/bash
urls=("http://utagechildcare.com" "http://unicusdiagnostics.com")

for url in "${urls[@]}"; do
    wget -O Arbitrary.html "$url" &
    pid1=$!
    wait $pid1
    grep_output=$(grep -o '<img[^>]*src="[^"]*"' Arbitrary.html)

    for img_tag in $grep_output; do
        temp_string=${img_tag#*src=\"}
        image_url=${temp_string%%\"*}
        wget "$image_url" &
    done
    rm Arbitrary.html
done
