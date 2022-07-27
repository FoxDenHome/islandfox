#!/bin/sh

set -e

umount /mnt/nas/* || true
LC_GOCRYPTFS_PASSWD="$(cat /mnt/keydisk/gocryptfs-icefox-nas)" ssh root@icefox.doridian.net
mount /mnt/nas/zhdd
mount /mnt/nas/zssd

docker restart nas2_samba_1 nas2_nginx_1 || true
