#!/bin/bash

# We are using two variables
# 1 — camera name
# 2 — directory name (where file will be stored)

CIP=$1
VDIR="/video/motion/${CIP}"

`mkdir -p -- "${VDIR}"`

`ffmpeg -i "rtsp://admin:123@${CIP}:554/onvif1" -b 900k -c:v copy -c:a aac -r 60 -f mp4 -y "${VDIR}/"$(date +\%Y\%m\%d\%H\%M\%S).mp4`  > /dev/null
