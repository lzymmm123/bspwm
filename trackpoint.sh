#/bin/sh
TP_ID=$(xinput list | grep TrackPoint | grep pointer | cut -f 2 | grep -Eo '[0-9]{1,}')

if [ -n "$TP_ID" ]; then
    AS_ID=$(xinput list-props "$TP_ID" | grep 'Accel Speed (' | cut -f 2 | grep -Eo '[0-9]{1,}')
    xinput set-prop "$TP_ID" "$AS_ID" 0.7
fi
