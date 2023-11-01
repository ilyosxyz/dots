[[ -f ~/.bashrc ]] && . ~/.bashrc

# env vars
export PATH=$PATH$(find ~/.local/bin -type d -printf :%p)
export TERMINAL=alacritty
export EDITOR=nvim
export BROWSER=brave
export SUDO_ASKPASS=~/.local/bin/dmenu_pass

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
