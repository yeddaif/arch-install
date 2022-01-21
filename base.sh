#!/bin/bash

# set system time
ln -sf /usr/share/zoneinfo/Africa/Casablanca /etc/localtime
hwclock --systohc
sed -i '177s/.//' /etc/locale.gen
locale-gen

# set keyboard layout
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "KEYMAP=fr" >> /etc/vconsole.conf
echo "arch" >> /etc/hostname

# set local host address
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 Arch.localdomain Arch" >> /etc/hosts
echo "STEP ON DONE !"
#Add parallel downloading
sed -i 's/^#ParallelDownloads/ParallelDownloads/' /etc/pacman.conf
pacman -S --noconfirm pacman-contrib curl
pacman -S --noconfirm reflector rsync 
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
reflector -c "US" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist

echo "installing essential packages"
pacman -S --noconfirm grub iw iwd dhcpcd sudo
systemctl enable iwd dhcpcd
echo "Adding linus user " && useradd -m -G wheel,storage,video linus 
echo "Installing grub"
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
echo "Last step done"
echo "Change root password"; passwd
echo "Change linus password"; passwd linus
sed -i '82s/.//' /etc/sudoers
echo "Making wheel able to use sudo as root"


