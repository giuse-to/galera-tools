#!/bin/sh

WORKINGDIR=`dirname $0`
source $WORKINGDIR/galera-tools.conf

### retrieves node position
grep  'WSREP: Recovered position' $(mysqld_safe --wsrep-recover | head -n 1 |  cut -d "'" -f 2) | tail -n 1 | awk -F : {'print $NF'}

exit 0
