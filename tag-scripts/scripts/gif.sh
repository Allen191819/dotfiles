#! /bin/bash

gif_file=~/demo.gif
let x y w h

getwin() {
    XWININFO=$(xwininfo)
    read x < <(awk -F: '/Absolute upper-left X/{print $2}' <<< "$XWININFO")
    read y < <(awk -F: '/Absolute upper-left Y/{print $2}' <<< "$XWININFO")
    read w < <(awk -F: '/Width/{print $2}' <<< "$XWININFO")
    read h < <(awk -F: '/Height/{print $2}' <<< "$XWININFO")
}
getregion() {
    xywh=($(xrectsel "%x %y %w %h")) || exit -1
        let x=${xywh[0]} y=${xywh[1]} w=${xywh[2]} h=${xywh[3]}
    }

case $1 in
    1) getwin ;;
    2) getregion ;;
    3) let x=0 y=0 w=1920 h=1080 ;;
    *)
        echo 1: 选择窗口
        echo 2: 选择区域
        echo 3: 全屏
        exit
        ;;
esac

[ "$2" ] \
    && byzanz-record -x $x -y $y -w $w -h $h -v $gif_file --exec="$2 $3 $4 $5 $6 $7 $8 $9 $10" \
    || byzanz-record -x $x -y $y -w $w -h $h -v $gif_file
    sleep 1
