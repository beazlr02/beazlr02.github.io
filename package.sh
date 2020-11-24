#!/bin/bash

ffmpeg -f avfoundation -framerate 30 -video_size 640x480 -i "0:none" -vcodec libx264 -preset ultrafast -tune zerolatency -pix_fmt yuv420p -map 0:v -profile:v:0 main -f dash -seg_duration 10 -use_template 1 -use_timeline 0 -remove_at_exit 0 -window_size 100 cam.mpd
