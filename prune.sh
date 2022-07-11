#!/bin/sh

runprune() {
    export REPO="$1"
    /opt/backup/prune.sh
}

runprune 'b2:islandfox-backups:/'
runprune 'sftp:islandfox@icefox.doridian.net:/mnt/zhdd/islandfox/restic'
