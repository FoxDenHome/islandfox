#!/bin/sh

runx() {
    export REPO="$1"
    export CMD="$2"
    shift 2
    "$CMD" "$@"
}

runx 'b2:islandfox-backups:/' "$@"
REST_SERVER_PASSWORD="$(cat /mnt/keydisk/rest-server-password | tr -d '\r\n\t ')"
runx "rest:https://islandfox:$REST_SERVER_PASSWORD@icefox.doridian.net:8000/islandfox/main" "$@"
