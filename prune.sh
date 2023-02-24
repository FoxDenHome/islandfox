#!/bin/sh

runx() {
    export REPO="$1"
    /opt/backup/prune.sh
}

/opt/islandfox/restic.sh /opt/backup/prune.sh
