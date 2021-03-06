#!/bin/sh

T_HOSTNAME=$(hostname)
T_ID=$( echo ${T_HOSTNAME} | cut -d "-" -f2 | cut -d "-" -f1 )

export KAFKA_BROKER_ID=$(( T_ID + 1 ))

sh /etc/confluent/docker/run
