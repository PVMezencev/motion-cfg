#!/bin/bash

# We are using one variable
# 1 — camera name

CIP=$1

# Get string with mencoder process PID
MPID=`ps ax | grep ffmpeg | grep "${CIP}" | awk '{ print $1 }'`
# Kill process
`kill -15 "${MPID}"`
