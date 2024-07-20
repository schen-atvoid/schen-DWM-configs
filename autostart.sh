#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}

#run "dex $HOME/.config/autostart/arcolinux-welcome-app.desktop"

######## My default monitor setting Start ########

xrandr --output HDMI-0 --off \
       --output DP-0 --mode 2560x1440 --rate 59.95 --pos 3840x266 --rotate normal \
       --output DP-1 --off \
       --output HDMI-1 --off \
       --output DP-2 --primary --mode 3840x2160 --rate 143.96 --pos 0x0 --rotate normal \
       --output DP-3 --off \
       --output DP-4 --off \
       --output DP-5 --off

######## My default monitor setting End ########

#run "xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal"
#run "xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off"
#run xrandr --output eDP-1 --primary --mode 1368x768 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off
#run xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#run xrandr --output DVI-I-0 --right-of HDMI-0 --auto
#run xrandr --output DVI-1 --right-of DVI-0 --auto
#run xrandr --output DVI-D-1 --right-of DVI-I-1 --auto
#run xrandr --output HDMI2 --right-of HDMI1 --auto
2
run "nm-applet"
run "pamac-tray"
run "variety"
run "xfce4-power-manager"
#run "blueberry-tray"
run "/usr/lib/xfce4/notifyd/xfce4-notifyd"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
#run "numlockx on"
run "volumeicon"
run "blueman-applet"
#picom -b  --config ~/.config/arco-dwm/picom.conf &
#run "numlockx on"
run nvidia-settings --load-config-only
#run volumeicon
run fcitx
run slstatus &
sxhkd -c ~/.dwm/sxhkdrc &
#run "nitrogen --restore"
#run "conky -c $HOME/.config/arco-dwm/system-overview"
#you can set wallpapers in themes as well
feh --bg-fill /home/jessie/Pictures/wall/Sci-Aircraft.jpg &
feh --bg-fill /home/jessie/Pictures/wall/Sci-Aircraft.jpg &
#wallpaper for other Arch based systems
#feh --bg-fill /usr/share/archlinux-tweak-tool/data/wallpaper/wallpaper.png &
#run applications from startup

#run "insync start"
#run "spotify"
#run "ckb-next -b"
#run "discord"
#run "telegram-desktop"
