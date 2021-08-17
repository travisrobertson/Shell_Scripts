#!/bin/bash

base_filename="file.fx"

file_modified_date=$(date -r $base_filename.1 "+%Y%m%d")

echo "file modified date = $file_modified_date"

number_of_files=$(ls $base_filename.* | wc -l)

echo "number of files = $number_of_files"

loop_count=0
while [ $loop_count -lt $number_of_files ]
    do
        loop_count=`expr $loop_count + 1`
        echo "base_filename = $base_filename"
        echo "loop number = $loop_count"
        work_file=$base_filename.$loop_count
        echo "work file = $work_file"
        file_modified_date=$(date -r $work_file "+%Y%m%d")
        echo "file modified date = $file_modified_date"
        echo ""
        sleep 1
    done