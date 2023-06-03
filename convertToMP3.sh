#! /bin/bash

find . -name '*.m4a' | parallel 'ffmpeg -y -i {} -c:a libmp3lame -vn -ar 44100 -ac 2 -b:a 320k {.}.mp3 && rm {.}.m4a'