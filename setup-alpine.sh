#!/bin/sh

set -xe

setup-keymap br br
setup-hostname pi-hole
setup-interfaces -r
setup-dns -d home 1.1.1.1
setup-timezone -i America/Sao_Paulo
setup-ntp busybox
setup-apkrepos -c -1
setup-sshd openssh
passwd
echo "PermitRootLogin yes" > /etc/ssh/sshd_config.d/pi-hole.conf
setup-disk -m sys
