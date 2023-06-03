#!/bin/bash
MPD_CURRENT_SONG="$(ncmpcpp -q -p 6601 --current-song='{%a - %t}|{%f}' | sed 's/%20/ /g' | sed 's/\....$//')"
notify-send -u normal -i mpi-symbolic 'Now Playing' "$MPD_CURRENT_SONG"
