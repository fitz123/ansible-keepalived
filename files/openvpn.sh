#!/bin/bash

TYPE=$1
NAME=$2
STATE=$3

case $STATE in
        "MASTER") /etc/init.d/openvpn start
                  exit 0
                  ;;
        "BACKUP") /etc/init.d/openvpn stop
                  exit 0
                  ;;
        "FAULT")  /etc/init.d/openvpn stop
                  exit 0
                  ;;
        *)        echo "unknown state"
                  exit 1
                  ;;
esac
