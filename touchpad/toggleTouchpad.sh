declare -i ID
ID=`xinput list | grep -Eo 'E Mouse\s*id\=[0-9]{1,2}' | grep -Eo '[0-9]{1,2}'`
declare -i STATE
STATE=`xinput list-props $ID|grep 'Device Enabled'|awk '{print $4}'`
if [ $STATE -eq 1 ]
then
    xinput disable $ID
    echo "Touchpad disabled."
    notify-send "Touchpad Disabled"
else
    xinput enable $ID
    echo "Touchpad enabled."
    notify-send "Touchpad Enabled"

fi
