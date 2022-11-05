#!/bin/bash

# Defines
SCRIPT_JOIN="docker-swarm-join.sh" 

# Parameters
IP_WORKER=$1
IP_LEADER=$2
FOLDER_SYNC=$3

function swarm_leader () {
   sudo docker swarm init --advertise-addr $IP_LEADER | grep " --token" > "$FOLDER_SYNC/$SCRIPT_JOIN"
}
function swarm_worker () {
   $(cat "$FOLDER_SYNC/$SCRIPT_JOIN")   
}

echo "==> Starting cluster in the $HOSTNAME/$IP_WORKER" 
if [ $IP_WORKER = $IP_LEADER ]; then
   swarm_leader 
else
   swarm_worker
fi
echo "==> A L L  D O N E  ! ! ! <=="