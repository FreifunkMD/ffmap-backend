#!/bin/bash

cd $(dirname $0)

export PATH=/usr/sbin:$PATH

ALIASES=/opt/ffmap-backend/aliases_fastd.json

set -e
DEST=/var/www/nodes_ffhh/

"$(dirname "$0")"/bat2nodes.py -a $ALIASES -o -d $DEST 
