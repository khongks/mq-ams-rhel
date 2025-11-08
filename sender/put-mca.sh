#!/bin/bash

. ./set-mqserver-mca.sh

QUEUE=${1:-CONFIDENTIALITY.Q}

export PATH=$PATH:/opt/mqm/samp/bin
export MQSAMP_USER_ID=alice
export MQS_DISABLE_ALL_INTERCEPT=false
amqsputc ${QUEUE} QM1
