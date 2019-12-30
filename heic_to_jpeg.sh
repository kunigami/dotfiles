#!/bin/bash

heic_to_jpg_dir() {

    # This makes the regex =~ case insensitive
    shopt -s nocasematch

    for f in *; do
      if [[ "$f" =~ \.heic ]]; then

        # Replace the .heic extension w/ .jpg
        name="${f::-5}.jpg"
        
        results=$(ls | grep $name)

        # If there's a file same name and the jpg extension, assume it's converted 
        # already
        if [ -n "$results" ]
        then
            continue
        fi

        echo "Converting $f to $name"

        # Generate jpeg from heic
        heif-convert $f $name
      fi
    done
}