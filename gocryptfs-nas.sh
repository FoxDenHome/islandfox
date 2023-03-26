#!/bin/sh

set -e

LC_GOCRYPTFS_PASSWD="$(cat /mnt/keydisk/gocryptfs-icefox-nas)" ssh root@icefox.doridian.net
