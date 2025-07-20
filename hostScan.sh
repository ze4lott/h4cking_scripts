#!/bin/bash

base_ip=${1:-192.168.1}

for i in $(seq 1 254); do
    timeout 2 bash -c "ping -c 1 ${base_ip}.$i > /dev/null 2>&1 && echo Host ${base_ip}.$i - ACTIVO" &
done
wait

