[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH$(find ~/.local/bin -type d -printf :%p)
export TERMINAL=alacritty
export EDITOR=nvim
export BROWSER=brave
export SUDO_ASKPASS=~/.local/bin/dmenu_pass

if [ "$(tty)" = "/dev/tty1" ]; then
  pidof bspwm || startx
fi
