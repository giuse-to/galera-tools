#!/bin/sh

WORKINGDIR=`dirname $0`
source $WORKINGDIR/galera-tools.conf

## starting as first node
sed -i  '/^safe_to_bootstrap: /s/ .*/ 1/' ${GRASTATEFILE}

galera_new_cluster

exit 0
