#!/bin/bash

. /opt/mqm/bin/setmqenv -s

export MQS_KEYSTORE_CONF=~/.mqs/alice-mca-keystore.conf

endmqm -i QM1

sleep 3

strmqm QM1
