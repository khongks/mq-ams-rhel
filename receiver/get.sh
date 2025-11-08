#!/bin/bash

. ./set-mqserver.sh

QUEUE=${1:-CONFIDENTIALITY.Q}

export PATH=$PATH:/opt/mqm/samp/bin
export MQSAMP_USER_ID=fred
export MQS_KEYSTORE_CONF=~/.mqs/fred-keystore.conf
amqsgetc ${QUEUE} QM1
