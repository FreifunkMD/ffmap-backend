#!/bin/bash

cd $(dirname $0)

export PATH=/usr/sbin:/usr/local/sbin:$PATH

PEERS=/etc/fastd/magdeburg/peers
ALIASES=/opt/ffmap-backend/aliases_fastd.json
ALIASES2=/opt/ffmap-backend/aliases.json
DEST=/var/www/map

set -e

"$(dirname "$0")"/mkaliases.py -p $PEERS -d $ALIASES
"$(dirname "$0")"/bat2nodes.py -A -a $ALIASES2 -a $ALIASES -d $DEST
