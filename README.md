# Dotfiles
This repo contains my configurations for my desktop.



## Basic information
Operating System: Arch Linux \
WM/DE: BSPWM + sxhkd + picom + rofi\
Session type: X11 \
Terminal: Kitty with ZSH\
File manager: Thunar, Midnight Commander \
Notifications: dunst \
Qt/GTK Theme + Colorscheme: Catppuccin Mocha \
Bar: Polybar \
Langauge input: fcitx5 \
Browser: Firefox, Chromium\
Text Editor: Neovim, Vscodium, Sublime Text 4 \
Music Player: (pulseaudio) mpd + ncmpcpp + cava (visualiser)\
Viewers: Viewnior + Digikam (Image), VLC (Video), zathura (pdf, djvu)
Font: FiraCode Nerd Font, Noto Sans CJK

Others:
feh to set wallpaper,
amixer to set volume,
xbacklight to set screen brightness

### Packages to install
A list of packages I have on my system can be found in the ```pacman.txt```
file, generated using
```pacman -Qeq > pacman.txt```.
Not all packages are needed;
discard some at your own discretion.

### ZSH/Terminal
Im using ```zshautosuggestions``` and powerlevel10k (for prompts).
Custom functions are defined in ```~/.zsh_config/funcs.zsh```.
The termstart command randomly picks
between executing neofetch or quote 
when opening a terminal.

### Fcitx5
Need to set environments in ```.zshenv```:
```
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
```
For easy configuration, use the Fcitx5 configuration tool (uses GUI).
I use ```Pinyin``` for chinese and ```mosc``` for Japanese.

### Browser
Firefox with the Catppuccin Mocha theme.
I also use ```penguinFox``` for a more minimalist look.

### Text Editors
Each programming language has a main and backup text editor. \
Neovim is configured for Latex (main) and C++ (main) (in competitive programming context). \
VSCodium is configured for C++ (backup) and Python (backup). \
Sublime Text 4 is configured for Python (main) and Latex (backup).

For editing system/configuration files, Neovim.

### Neovim
Using ```Vim-plug```.
Ultisnips for code snippets,
Catppuccin-mocha colorscheme,
vim-latex-live-preview and vimtex,
vim-devicons (for icons),
lexima (for bracket autopairing).

To copy-paste between nvim and other apps,
you need a clipboard.
I use xclip.


### Theming
Qt theming using ```qt5ct```. This requires
```QT_QPA_PLATFORMTHEME=qt5ct```
in ```.zshenv```.
The colorscheme is **Catpuccin-mocha**.
For GTK, using
```lxappearance```,
same theme.

This colorscheme is also used in all
text editors, terminal (refer to ```kitty.conf```),
Firefox, fcitx5,
zathura, dunst, midnight commander, btop , rofi and polybar. 
Refer to the official Catppuccin page for instructions if needed.

The icon pack is ```fluent dark```.
qtss is ```breeze```.

### Screencast and Screenshots
```SimpleScreenRecorder``` is
used for screencasts,
and ```xfce4-screenshooter``` for 
screenshots.

### Power Management
```xfce4-power-manager```.
For lockscreen, ```betterlockscreen```.
This lockscreen uses wallpaper in cache;
update it by ```betterlockscreen -u /path/to/wallpaper```.
Lockscreen mode by doing
```betterlockscreen --lock```.
For blur, do
```betterlockscreen --lock blur```.

### File manager
Thunar. For a more complete experience
```gvfs, gvfs-afc, thunar-volman```
are needed.


### Mirrors
AUR's ```rate-mirrors-bin``` is used,
find fastest mirrors by using 
```rate-mirrors arch```,
then copy the mirrors to
```/etc/pacman.d/mirrorlist```.

### Polkit
I use the xfce4 polkit manager.

### VM
VirtualBox.








