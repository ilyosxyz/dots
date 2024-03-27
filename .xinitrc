sxhkd &
dunst &
picom &
syncthing serve --no-browser --no-restart --logflags=0 > /dev/null &

xsetroot -cursor_name left_ptr
numlockx

dual_head detect

exec bspwm
