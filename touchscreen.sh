#!/usr/bin/env bash
#touchscreen.sh
# script taken from Ubuntu forums (http://ubuntuforums.org/showthread.php?t=2100744)

DEVICE="ELAN Touchscreen"
STATUS=`xinput list-props "$DEVICE" | grep 'Device Enabled' | sed 's/.*\([0-9]\)$/\1/'`
 
if [ "$STATUS" = "1" ]
then
    xinput disable 'ELAN Touchscreen'
    notify-send "Touch-screen" "Disabled" -i /usr/share/pixmaps/touchscreen.jpg	
elif [ "$STATUS" = "0" ]
then
    xinput enable 'ELAN Touchscreen'
    notify-send "Touch-screen" "Enabled" -i /usr/share/pixmaps/touchscreen.jpg	
else
    echo "Error : bad argument"
fi

