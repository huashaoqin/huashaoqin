#!/usr/bin/env sh

######################################################################
# @author      : Gemo-X (gemo-x@outlook.com)
# @file        : xbacklight
# @created     : Wednesday Feb 26, 2020 15:16:19 CST
#
# @description : set xbacklight
######################################################################

### please intell light-git!
# in archlinux `yay -S light-git`

[ ! -f ~/.backlight ] && echo 30 > ~/.backlight

# light 命令
LIGHT=`which light`
INC="${LIGHT} -A"
DEC="${LIGHT} -U"
SET="${LIGHT} -S"

# 最低亮度
${LIGHT} -N 0.1

if [ -z $1 ]; then
    for line in `cat ~/.backlight`
    do
       ${SET} $line
    done
fi

if [[ $1 == "-inc" && -n $2 ]]; then
    ${INC} $2
fi

if [[ $1 == "-dec" && -n $2 ]]; then
    ${DEC} $2
fi

if [[ $1 == "-set" && -n $2 && -z $3 ]]; then
    ${SET} $2
fi

if [[ $1 == "-night" && -z $2 ]]; then
    ${SET} 0.5
fi

if [[ $1 == "-normal" && -z $2 ]]; then
    ${SET} 30
fi

if [[ $1 == "-middle" && -z $2 ]]; then
    ${SET} 15
fi

# backlight=`xbacklight -get`
backlight=`${LIGHT} -G`
echo $backlight > ~/.backlight
