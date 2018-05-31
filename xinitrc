# UI scaling for hidpi displays
export GDK_SCALE=2
export GDK_DPI_SCALE=0.9
export ELM_SCALE=2
export QT_AUTO_SCREEN_SCALE_FACTOR=2
xrandr --dpi 175

# no beeping and faster key repeat
xset -b
xset r rate 220 40

# umlauts
xmodmap ~/.xmodmap

# switch left alt and left cmd key on apple keyboards
xkbcomp -i 9 ~/.apple-keyboard.xkb $DISPLAY

# lock screen after 10 minutes
xautolock -time 10 -locker /home/segfault/.config/i3/lock.sh &

# xrandr management
~/bin/xrefresh

# color profiles
dispwin /home/segfault/.color/TPLCD.icm

# manage ssh-keys
keychain ~/.ssh/id_dsa
[ -f ~/.keychain/$HOSTNAME-sh ] && . ~/.keychain/$HOSTNAME-sh 2>/dev/null
[ -f ~/.keychain/$HOSTNAME-sh-gpg ] && . ~/.keychain/$HOSTNAME-sh-gpg 2>/dev/null

# night shift, location: //SEIBERT/MEDIA GmbH HQ
redshift -l 50.0786854:8.234806 &

# start i3 window manager
exec i3
