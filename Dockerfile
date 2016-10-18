FROM base/archlinux
MAINTAINER gidsi <gidsi@chaospott.de>

RUN pacman-key --populate archlinux
RUN pacman-key --refresh-keys

RUN pacman -Sy --noconfirm archlinux-keyring
RUN pacman -Syyu --noconfirm
RUN pacman-db-upgrade

RUN sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist.pacnew 
RUN rankmirrors -n 6 /etc/pacman.d/mirrorlist.pacnew > /etc/pacman.d/mirrorlist
RUN pacman -Syyu --noconfirm ca-certificates ca-certificates-mozilla
