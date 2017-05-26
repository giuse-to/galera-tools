#!/usr/bin/sh

CWD=`dirname $0`
source ${CWD}/../conf/galera-tools.conf

## starting as first node
sed -i  '/^safe_to_bootstrap: /s/ .*/ 1/' ${GRASTATEFILE}

galera_new_cluster

exit 0
