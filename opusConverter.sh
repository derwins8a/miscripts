#!/bin/bash

echo opus to mp3 converter!
for FILE in *.opus; do     
    echo -e "Processing file '$FILE'";
    ffmpeg -i "${FILE}" -vn -ab 320k -ar 44100 -y "${FILE%.opus}.mp3";
done;