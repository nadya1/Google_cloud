#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "authorize_nodes.sh clustername  zone  numworkers"
    echo "  e.g.  ./authorize_nodes.sh cluster-1 us-east1-b 2"
    exit
fi

# CHANGE CLOUDSQL (to cloudsql server name)
CLUSTER=$1
CLOUDSQL=mysql-lab3
ZONE=$2
NWORKERS=$3

machines="$CLUSTER-m"
for w in `seq 0 $(($NWORKERS - 1))`; do
   machines="$machines $CLUSTER-w-$w"
done
echo "Machines to authorize: $machines in $ZONE ... finding their IP addresses"

ips=""
for machine in $machines; do
    IP_ADDRESS=$(gcloud compute instances describe $machine --zone=$ZONE --format='value(networkInterfaces.accessConfigs[].natIP)' | sed "s/\[u'//g" | sed "s/'\]//g" )
    echo "IP address of $machine is $IP_ADDRESS"
    if [ -z  $ips ]; then
       ips=$IP_ADDRESS
    else
       ips="$ips,$IP_ADDRESS"
    fi
done

echo "Authorizing [$ips] to access cloudsql=$CLOUDSQL"
gcloud sql instances patch $CLOUDSQL --authorized-networks $ips