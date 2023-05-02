#!/bin/sh

set -e

LC_GOCRYPTFS_PASSWD="$(cat /mnt/keydisk/gocryptfs-icefox-bengalfox)" ssh root@icefox.doridian.net
