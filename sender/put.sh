#!/bin/bash

. ./set-mqserver.sh

QUEUE=${1:-CONFIDENTIALITY.Q}

export PATH=$PATH:/opt/mqm/samp/bin
export MQSAMP_USER_ID=alice
export MQS_KEYSTORE_CONF=~/.mqs/alice-keystore.conf
amqsputc ${QUEUE} QM1
