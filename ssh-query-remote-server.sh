#!/bin/bash
USERNAME=abc
HOSTS="x.x.x.x"

## Command to execute
SCRIPT="cat /etc/mtab|grep /dev/xadb"

for HOSTNAME in ${HOSTS} ; do
    ssh -l ${USERNAME} ${HOSTNAME} "${SCRIPT}"
done
