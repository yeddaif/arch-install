 #!/bin/bash
if [[ ! -e /bin/paru ]] ; then
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg -si
    sleep 2 ;cd;
fi
paru -S polybar picom-ibhagwan-git brave-bin
