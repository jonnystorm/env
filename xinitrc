export PASSWORD_STORE_X_SELECTION=primary
export DE=gnome

[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

ALSA_CONFIG_UCM=/opt/alsa/ucm alsaucm -c rk3399-gru-sound set _verb HiFi

[ -n `which pulseaudio` ] && pulseaudio --start

if [ -n `which autocutsel` ]; then
  autocutsel -fork
  autocutsel -selection PRIMARY -fork
fi

[ -n `which xbindkeys` ] && xbindkeys
#[ -n `which setxkbmap` ] && setxkbmap -option compose:rwin
[ -n `which xmodmap` ] && xmodmap .Xmodmap

#xcompmgr &
#feh --bg-fill /home/jstorm/dropbox/orange-grey-bg.png
dwmstatus.sh &
exec dwm

