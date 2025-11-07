#!/bin/bash

QUEUE=${1:-CONFIDENTIALITY.Q}

export PATH=$PATH:/opt/mqm/samp/bin
export MQSERVER='DEV.APP.SVRCONN/TCP/mqams-svr1.dev.fyre.ibm.com(1414)'
export MQSAMP_USER_ID=alice
export MQS_KEYSTORE_CONF=~/.mqs/alice-keystore.conf
amqsputc ${QUEUE} QM1
