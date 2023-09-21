# My ArchLinux+bspwm configurations and scripts

## Configurations

+ bspwm
+ polybar (+ scripts)
+ sxhkd
+ alacritty
+ neovim
+ bash
+ picom
+ dunst
+ btop
+ lf file manager
+ neofetch
+ paru
+ zathura
+ xinit

## Scripts

All scripts are in `.local/bin` directory

| script           | usage                                                                             |
|------------------|-----------------------------------------------------------------------------------|
| dmenu_bookmarks* | paste/create/delete/manage bookmarks                                              |
| dmenu_pass*      | to use for `SUDO_ASKPASS`                                                         |
| dmenu_mount*     | mount drives interactively                                                        |
| dmenu_umount*    | unmount drives interactively                                                      |
| dmenu_term*      | dmenu_run for terminal apps                                                       |
| dual_head        | to manage 2 monitors                                                              |
| ifinstalled      | to check if package(s) is/are installed, used in other scripts                    |
| imgur            | upload images to imgur from file/stdin/url                                        |
| my_wpctl         | wrapper for wireplumber's wpctl to manage speaker/headsets and mic                |
| set_bg           | load/change wallpaper                                                             |
| shot**           | maim wrapper to copy/save/upload ** a capture of full screen/window/selected area |
| toggle_touchpad  | enable/disable laptops' touchpad                                                  |
| torrent_add      | add torrents to transmission-daemon's list                                        |
| xkeytoggle       | toggle keyboard's layout us/ru                                                    |

<div>* uses dmenu</div>
<div>** uses imgur script to upload</div>