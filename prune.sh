#!/bin/sh

runx() {
    export REPO="$1"
    /opt/backup/prune.sh
}

runbackup 'b2:islandfox-backups:/'
REST_SERVER_PASSWORD="$(cat /mnt/keydisk/rest-server-password | tr -d '\r\n\t ')"
runx "rest:https://islandfox:$REST_SERVER_PASSWORD@icefox.doridian.net:8000/islandfox/main"
