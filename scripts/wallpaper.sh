#!/bin/zsh -
#===============================================================================
#
#          FILE: wallpaper.sh
#
#         USAGE: ./wallpaper.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Gemo X (A Writer), gemo-x@outlook.com
#  ORGANIZATION: 
#       CREATED: 07/06/2019 01:28:46 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

while true; do
	find ~/.config/bspwm/wallpaper -type f \( -name '*.jpg' -o -name '*.png' -o -name '*.jpeg' \) -print0 |
		shuf -n1 -z | xargs -0 feh --bg-scale
	sleep 15m
done
