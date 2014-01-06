#!/bin/bash

cd $(dirname $0)

export PATH=/usr/sbin:$PATH

PEERS=/etc/fastd/ffhh-mesh-vpn/peers
ALIASES=/opt/ffmap-backend/aliases_fastd.json
DEST=/var/www/nodes_ffhh/

set -e

"$(dirname "$0")"/mkaliases.py -p $PEERS -d $ALIASES
"$(dirname "$0")"/bat2nodes.py -a $ALIASES -o -d $DEST 
