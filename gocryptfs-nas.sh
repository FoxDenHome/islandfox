#!/bin/sh

set -ex

gocryptfs --allow_other --passfile /mnt/keydisk/gocryptfs-icefox-nas /mnt/nas/zhdd /mnt/nas/zhdd_dec
gocryptfs --allow_other --passfile /mnt/keydisk/gocryptfs-icefox-nas /mnt/nas/zssd /mnt/nas/zssd_dec


