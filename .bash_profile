[[ -f ~/.bashrc ]] && . ~/.bashrc

# add '~/.local/bin' an subfolder to path
export PATH="$PATH$(find $HOME/.local/bin -type d -printf :%p)"

# default apps
export TERMINAL="alacritty"
export EDITOR="nvim"
export BROWSER="brave"
export MENU="dmenu -i -fn 'Iosevka Fixed-10'"

# some program settings
export SUDO_ASKPASS="$HOME/.local/bin/dmenu_pass"
export PASSWORD_STORE_DIR="$HOME/.local/share/pass"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export _JAVA_AWT_WM_NONREPARENTING=1

# gpg ssh auth
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

# start X
if [ "$(tty)" = "/dev/tty1" ]; then
  pidof xinit || startx
fi
