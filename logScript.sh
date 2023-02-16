#!/bin/bash

while true
do
        DATE=$(date '+%Y-%m-%d_%H%M%S')
        SET_INTERFACE=eth0
        SAVE_IN_FOLDER=/home/abhi/FirewallAndLog/Log/logs
        SAVE_AS_FILE=tcpdump_$DATE.pcap

        sudo tcpdump -c 1024 -i $SET_INTERFACE -w "$SAVE_IN_FOLDER/$SAVE_AS_FILE"
done
