#!/bin/bash
urls=("http://utagechildcare.com" "http://unicusdiagnostics.com")

for url in "${urls[@]}"; do

    wget -O Arbitrary.html "$url"
    grep_output=$(grep -o '<img[^>]*src="[^"]*"' Arbitrary.html)

    for img_tag in $grep_output; do
        image_url=$(echo "$img_tag" | sed 's/<img[^>]*src="//')
        image_url=$(echo "$image_url" | sed 's/".*//') 
        wget "$image_url"
    done
    rm Arbitrary.html
done