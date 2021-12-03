#!/bin/bash

source /home/allen/.scripts/menu

menu_items=("腾讯云lighthouse" "腾讯云root" "树莓派-lan" "树莓派-wlan" )

pre_hook() {
    echo '请选择item:'
}

cmds[0]='ssh lighthouse@'
cmds[1]='ssh root@'
cmds[2]='ssh pi@'
cmds[3]='ssh pi@'

after_hook() {
    echo
    echo '   '${cmds[$item_index]}
}

case $1 in
    ls)
        menu
        echo 连接${menu_items[$item_index]}
        exec ${cmds[$item_index]}
        ;;
    *) ssh $*;;
esac
