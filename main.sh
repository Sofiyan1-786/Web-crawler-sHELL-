#!/bin/bash

urls=("http://utagechildcare.com" "http://unicusdiagnostics.com")
max_jobs=2
counter=0
file_count=0


for url in "${urls[@]}"; do
  wget -O "file$file_count.html" "$url" &>/dev/null
  ((file_count++))
done

for ((i=0;i<file_count;i++)); do
  echo "file$i.html"
  grep_output=$(grep -o '<img[^>]*src="[^"]*"' file$i.html)

    for img_tag in $grep_output; do

        if [ "$img_tag" = "<img" ] ; then
          continue
        fi
        temp_string=${img_tag#*src=\"}
        img_url=${temp_string%%\"*}
        echo "Found pic at: $img_url"
        img_name=$(basename "$img_url")
        echo "Checking image : $img_name"
        if [ ! -f "$img_name" ]; then
            #if it doesnt exists then it downloads
            wget "$img_url" -O "$img_name" &>/dev/null &
            echo "File $img_name DNE - downloading it..."

            concurrent_downloads=`jobs -p|wc -w`

            #FEW ADDITION FROM HERE MADE HERE: Wait for jobs to complete if max_jobs limit is reached
            if (( concurrent_downloads >= max_jobs )); then
              echo "concurrent download reached its limit. waiting for at least one to finish."
              wait -n
            fi
            echo "SUCCESSFULLY DOWNLOADED THE IMAGE $img_name!"
        else
            echo "$img_name Exists, skipping..."
        fi
    done
  rm -f "file$i.html"
done
wait
echo "SCRAPING HAS BEEN COMPLETED."
exit
#EARLIER I DIDNT KNEW IF MULTIPLE PROCESSES CAN BE COMPLETED PARALLELY:) NOW FIXED
