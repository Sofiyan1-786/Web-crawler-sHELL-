#!/bin/bash
urls=("http://utagechildcare.com" "http://unicusdiagnostics.com")
max_jobs=10

counter=0 #jobs CURRENTLY.

for url in "${urls[@]}"; do
    wget -O Arbitrary.html "$url" &>/dev/null
    grep_output=$(grep -o '<img[^>]*src="[^"]*"' Arbitrary.html)
    
    for img_tag in $grep_output; do
        temp_string=${img_tag#*src=\"}
        img_url=${temp_string%%\"*}
        img_name=$(basename "$img_url")
        
        echo "Found pic at: $img_url"
        
        if [ ! -f "$img_name" ]; then # ADDITION MADE HERE FOR THE EXISTENSE OF THE FILE.
            ((counter=counter%max_jobs)) # CHECKING WEATHER THE COUNTER IS GREATER THAN THE JOB MAX.
            ((counter++==0)) && wait # Corrected cc management.
            
            echo "File $img_name DNE - downloading it..."
            wget "$img_url" -O "$img_name" &>/dev/null &
            echo "SUCCESSFULLY DOWNLOADED THE IMAGE $img_name!" 
        else
            echo "$img_name Exists, skipping..."
        fi
    done
    
    rm Arbitrary.html
done
wait
echo "SCRAPING HAS BEEN COMPLETED."
