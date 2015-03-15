#!/bin/bash
#chkconfig: 345 95 50
#description: Starts xvfb on display 99
if [ -z "$1" ]; then
echo "`basename $0` {start|stop}"
   exit
fi

case "$1" in
start)
   if [ ! -f /tmp/.X99-lock ]; then
     echo "Starting xvfb server"
     /usr/bin/Xvfb :99 -screen 0 1280x1024x24 > /dev/null 2>&1 &
   fi
;;

stop)
   killall Xvfb
;;
esac