#!/bin/bash

# Defines.
SCRIPT_JOIN="docker-swarm-join.sh"  # Worker's dinamic shellscript name (token join).

# Parameters.
IP_NODE=$1        # Atual node IP address.
IP_LEADER=$2      # Leader node IP address.
FOLDER_SYNC=$3    # Vagrant shared folder.

echo "==> Starting cluster in the $HOSTNAME/$IP_NODE" 
if [ $IP_LEADER = $IP_NODE ]; then  # Leader node.
   sudo docker swarm init --advertise-addr $IP_LEADER | grep " --token" > "$FOLDER_SYNC/$SCRIPT_JOIN" 
else  # Worker node. 
   $(cat "$FOLDER_SYNC/$SCRIPT_JOIN")
fi
echo "==> A L L  D O N E  ! ! ! <=="