#! /bin/sh

chosen=$(printf "⏻ Shutdown\n Restart\n󰍃 LogOut\n Lock" | rofi -location 3 -xoffset 845 -yoffset -400 -dmenu -i -theme-str '@import "power.rasi"')


case "$chosen" in
	"⏻ Shutdown") poweroff ;;
	" Restart") reboot ;;
	"󰍃 LogOut") i3-msg exit ;;
	" Lock") i3lock --image $HOME/Pictures/wallpapers/nord_roads.png;;
        *) exit 1 ;;
esac	

