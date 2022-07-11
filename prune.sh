#!/bin/sh

runprune() {
    export REPO="$1"
    /opt/backup/prune.sh
}

runbackup 'b2:islandfox-backups:/'
runbackup 'sftp:islandfox@icefox.doridian.net:/mnt/zhdd/islandfox/restic'
