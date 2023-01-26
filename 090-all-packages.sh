#!/usr/bin/env sh
#set -e

func_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	sudo pacman -S --noconfirm --needed $1
    fi
}

list=(
# core ui
lightdm
lightdm-slick-greeter
alacritty
thunar
thunar-archive-plugin
thunar-volman
xmonad
xmonad-contrib
haskell-dbus
xmonad-utils
xmonad-log
feh
checkupdates-aur
perl-checkupdates-aur
arcolinux-polybar-git
awesome-terminal-fonts
dmenu
# dconf is key/value dabase for UI settings
# dconf
archlinux-logout-git
#
# desktop
unclutter
autorandr
hardcode-fixer-git  # Fixes Hardcoded Icons
libpulse
yad
scrot  # cli screenshot utility
simplescreenrecorder
flameshot
tlp  # Linux Advanced Power Management
# lxappearance
# gtk-engine-murrine
# nitrogen  # Background browser and setter for X windows
# picom  # X compositor that may fix tearing issues
#
# system
yay
docker
glances
cronie
direnv
pyenv
termdown
downgrade  # Bash script for downgrading one or more packages to a version in your cache or the A.L.A.
inxi  # Full featured CLI system information tool
#
# terminal
zsh
ripgrep
xclip
tree
#
# editor
emacs
visual-studio-code-bin
#
# internet
google-chrome
qutebrowser
qbittorrent
telegram-desktop
w3m  # Text-based Web browser as well as pager
#
# media
imagemagick
nomacs
vlc
#
# unpack
unace
unrar
zip
unzip
file-roller
#
# Accessories
keepassxc
mintstick-git  # Format or write images to usb-sticks (Linux Mint tool)
github-cli
#
# fonts
arcolinux-fonts-git
awesome-terminal-fonts
adobe-source-sans-fonts
cantarell-fonts
noto-fonts
ttf-bitstream-vera
ttf-dejavu
ttf-droid
ttf-hack
ttf-inconsolata
ttf-liberation
ttf-roboto
ttf-ubuntu-font-family
tamsyn-font
#
# sound
pulseaudio
pulseaudio-alsa
pavucontrol
alsa-firmware
alsa-lib
alsa-plugins
alsa-utils
gstreamer
gst-plugins-good
gst-plugins-bad
gst-plugins-base
gst-plugins-ugly
playerctl
#
# bluetooth
pulseaudio-bluetooth
bluez
bluez-libs
bluez-utils
blueberry
#
# printers
cups
cups-pdf
ghostscript
gsfonts
gutenprint
gtk3-print-backends
libcups
system-config-printer
#
# filesystem
samba
gvfs-smb
#
# network
avahi
nss-mdns
gvfs-smb
httpie
syncthing
#
mocp
ranger
pinta
# ---
# for ranger images preview
ueberzug
rclone
pyright
jq
inetutils
#
fd
cmake
editorconfig-core-c
npm
haskell-language-server
gnuplot
python-isort
python-pipenv
python-pytest
tidy
shellcheck
stylelint
xdotool
cabal-install
graphviz
discount
hoogle
)

count=0

	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done
