# pi-hole

My Pi-hole Setup

## Instalação

Utilizar a distribuição Alpine Linux e _release_ para Raspberry Pi `armv7`.

```
dd if=alpine-rpi-*-armv7.img of=/dev/mmcblk0 oflag=sync
echo ", +" | sfdisk /dev/mmcblk0 --append
mkfs.ext4 -L var /dev/mmcblk0p2
```

```
tar cvpzf localhost.apkovl.tar.gz --directory apkovl .
udisksctl mount -b /dev/mmcblk0p1
cp localhost.apkovl.tar.gz /media/$USER/PIBOOT/
udisksctl unmount -b /dev/mmcblk0p1
```

## Referências

* [Alpine Linux: Downloads](https://alpinelinux.org/downloads/)
* [Alpine Linux: Raspberry Pi](https://wiki.alpinelinux.org/wiki/Raspberry_Pi)
