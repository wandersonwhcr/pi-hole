# pi-hole

## Prepare

```
sudo dd if=/dev/zero of=/dev/mmcblk0 bs=1M count=100 conv=fsync
echo "start=2048, size=300M, type=c, bootable" | sudo sfdisk /dev/mmcblk0
sudo partprobe /dev/mmcblk0
sudo mkfs.vfat -F 32 -n PIBOOT /dev/mmcblk0p1
```

```
udisksctl mount -b /dev/mmcblk0p1
tar xvzf alpine-rpi-*-armv7.tar.gz --directory /media/$USER/PIBOOT
cp setup-alpine.sh /media/$USER/PIBOOT
udisksctl unmount -b /dev/mmcblk0p1
```

## Setup

```
cp /media/mmcblk0p1/setup-alpine.sh /tmp
/tmp/setup-alpine.sh
```

## Install

```
apk add \
    git \
    htop \
    iptables \
    podman \
    podman-compose \
    vim

rc-service wpa_supplicant stop
rc-update del wpa_supplicant boot

rc-update add cgroups
rc-service cgroups start

rc-update add podman
rc-service podman start

git clone https://github.com/wandersonwhcr/pi-hole
```
