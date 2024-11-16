[[ -f ~/.bashrc ]] && . ~/.bashrc

# add '~/.local/bin' an subfolder to path
export PATH="$PATH$(find $HOME/.local/bin -type d -printf :%p)"

# default apps
export TERMINAL="alacritty"
export EDITOR="nvim"

# some program settings
export SUDO_ASKPASS="$HOME/.local/bin/dmenu_pass"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export _JAVA_AWT_WM_NONREPARENTING=1

eval `ssh-agent -s`

# start X
if [ "$(tty)" = "/dev/tty1" ]; then
  pidof xinit || startx
fi
