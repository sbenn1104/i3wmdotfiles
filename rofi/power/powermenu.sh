#! /bin/sh

chosen=$(printf "⏻ Shutdown\n Restart\n󰍃 LogOut\n Lock" | rofi -dmenu -i -theme-str '@import "power.rasi"')


case "$chosen" in
	"⏻ Shutdown") poweroff ;;
	" Restart") reboot ;;
	"󰍃 LogOut") i3-msg exit ;;
	" Lock") i3lock --image $HOME/Pictures/wallpapers/nord_roads.png;;
        *) exit 1 ;;
esac	

