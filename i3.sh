#!/bin/bash
# Newtork
pacman -S --needed iptables-nft dnsmasq bridge-utils openbsd-netcat # Most of them needed for libvirt 
# Xorg
pacman -S --noconfirm --needed xorg-server xorg-xinit xorg-xrandr xorg-xkill  # Dispaly Server
# Development
pacman -S --noconfirm --needed nodejs npm base-devl
# Wdm
pacman -S --noconfirm --needed xmonad xmonad-contrib haskell-dbus haskell-language-server  qtile i3-gaps
# Firmware
pacman -S --noconfirm --needed intel-ucode  
# Audio and video
pacman -S --noconfirm --needed pulseaudio mpv  mpd mpc brightnessctl pamixer 
# Appearance 
pacman -S --noconfirm --needed feh lxappearance kvantum qt5ct tint2 
# Tools
pacman -S --noconfirm --needed xclip gcolor3 flameshot alacritty syncthing network-manager-applet
# Devices and disk Management
pacman -S --noconfirm --needed exfat-utils fuse gvfs gvfs-mtp ntfs-3g vde2 acpi usbutils xdg-user-dirs
# Archiver
pacman -S --noconfirm --needed pcmanfm xarchiver unrar unzip p7zip zip  
# Additional
pacman -S --noconfirm --needed rofi dunst libnotify lxsession
# CLI
pacman -S --noconfirm --needed btop exa bat  neovim fzf
# Zsh
pacman -S --noconfirm --needed zsh zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting zsh-theme-powerlevel10k
# Virtualisation
pacman -S --noconfirm --needed qemu virt-manager virt-viewer
#pacman -S  
usermod -a -G libvirt linus 

