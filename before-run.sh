#!/bin/sh

T_HOSTNAME=$(hostname)
T_ID=$( echo ${T_HOSTNAME} | cut -d "-" -f2 | cut -d "-" -f1 )

KAFKA_BROKER_ID=$T_ID

sh /etc/confluent/docker/run
