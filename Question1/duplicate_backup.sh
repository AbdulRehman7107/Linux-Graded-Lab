#!/bin/bash

SOURCE="submissions"
BACKUP="backup"

mkdir -p "$BACKUP"

REPORT="report.txt"
ERROR_LOG="errors.log"

processed=0
duplicates=0
backedup=0

> "$REPORT"
> "$ERROR_LOG"

declare -A filehash

for file in "$SOURCE"/*
do
    if [ -f "$file" ]; then
        processed=$((processed + 1))

        hash=$(md5sum "$file" 2>>"$ERROR_LOG" | cut -d' ' -f1)

        if [[ -z "${filehash[$hash]}" ]]; then
            filehash[$hash]=$file
            cp "$file" "$BACKUP"/ 2>>"$ERROR_LOG"
            backedup=$((backedup + 1))
        else
            duplicates=$((duplicates + 1))
        fi
    fi
done

echo "========== Submission Report ==========" >> "$REPORT"
echo "Files Processed : $processed" >> "$REPORT"
echo "Duplicate Files : $duplicates" >> "$REPORT"
echo "Files Backed Up : $backedup" >> "$REPORT"

echo "Task Completed."
