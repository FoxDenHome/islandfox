#!/bin/sh

set -ex

gocryptfs --passfile /mnt/keydisk/gocryptfs-icefox-nas /mnt/nas/zhdd /mnt/nas/zhdd_dec
gocryptfs --passfile /mnt/keydisk/gocryptfs-icefox-nas /mnt/nas/zssd /mnt/nas/zssd_dec
