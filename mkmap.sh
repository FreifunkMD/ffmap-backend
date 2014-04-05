#!/bin/bash

cd $(dirname $0)

export PATH=/usr/sbin:$PATH

PEERS=/etc/fastd/ffhh-mesh-vpn/peers
ALIASES=/opt/ffmap-backend/aliases_fastd.json
DEST=/var/www/nodes_ffhh/

cd "$(dirname "$0")"/
set -e

./mkaliases.py -p $PEERS -d $ALIASES
./bat2nodes.py -A -a $ALIASES -o -d $DEST 

